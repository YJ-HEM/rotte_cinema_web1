package spms.controls;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spms.dao.CinemaDao;
import spms.dao.MovieDao;
import spms.vo.MovieDate;

@Controller
public class ScheduleController {
	
	MovieDao movieDao;
	CinemaDao cinemaDao;

	@Autowired
	public ScheduleController setMovieDao(MovieDao movieDao) {
		this.movieDao = movieDao;
		return this;
	}

	@Autowired
	public ScheduleController setLocalDao(CinemaDao cinemaDao) {
		this.cinemaDao = cinemaDao;
		return this;
	}

	@RequestMapping("/schedule.do")
	public String execute(Map<String, Object> model) throws Exception {
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("view", "reserv");
		Vector<MovieDate> dates = new Vector<MovieDate>();
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
		DateFormat dfFull = new SimpleDateFormat("yyyy-MM-dd");
		DateFormat dfYearMonth = new SimpleDateFormat("yyyy.MM");
		DateFormat dfDay = new SimpleDateFormat("dd");
		DateFormat dfWeek = new SimpleDateFormat("E");

		for (int i = 0; i < 30; i++) {
			dates.add(new MovieDate().setDate(dfFull.format(cal.getTime())).setDay(dfDay.format(cal.getTime()))
					.setWeekKor(dfWeek.format(cal.getTime()))
					.setWeekEng(dfWeek.format(cal.getTime()).equals("토") ? "b":dfWeek.format(cal.getTime()).equals("일") ? "r":"")
					.setYearMonth(dfDay.format(cal.getTime()).equals("01") ? dfYearMonth.format(cal.getTime()) : ""));
			cal.add(Calendar.DATE, 1);
		}

		model.put("dates", dates);
		model.put("movies", movieDao.selectList(paramMap));
		model.put("locals", cinemaDao.selectListLocal());
		model.put("cinemas", cinemaDao.selectListDefault());
		return "/cinema/page/ScheduleForm.jsp";
	}
}

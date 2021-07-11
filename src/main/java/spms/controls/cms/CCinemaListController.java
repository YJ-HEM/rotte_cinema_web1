package spms.controls.cms;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spms.dao.CinemaDao;

//@RequestParam 적용
@Controller
public class CCinemaListController {
	CinemaDao cinemaDao;

	@Autowired
	public CCinemaListController setMemberDao(CinemaDao cinemaDao) {
		this.cinemaDao = cinemaDao;
		return this;
	}

	@RequestMapping("/cms/cinema/list.do")
	public String execute(Map<String, Object> model) throws Exception {
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("type", "all");
		model.put("cinemas", cinemaDao.selectListDefault(paramMap));
		return "/cms/CinemaListForm.jsp";
	}
}

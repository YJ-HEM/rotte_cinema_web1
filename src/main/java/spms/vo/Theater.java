package spms.vo;

public class Theater {
	protected int index;
	protected String name;
	protected int seatX;
	protected int seatY;
	protected int indexShowing;
	protected String startTime;
	
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSeatX() {
		return seatX;
	}
	public void setSeatX(int seatX) {
		this.seatX = seatX;
	}
	public int getSeatY() {
		return seatY;
	}
	public void setSeatY(int seatY) {
		this.seatY = seatY;
	}
	public int getIndexShowing() {
		return indexShowing;
	}
	public void setIndexShowing(int indexShowing) {
		this.indexShowing = indexShowing;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
}
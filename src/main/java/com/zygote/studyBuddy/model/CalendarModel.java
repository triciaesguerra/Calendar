package com.zygote.studyBuddy.model;

public class CalendarModel {
	private long id;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	public long getUser() {
		return user;
	}
	public void setUser(long user) {
		this.user = user;
	}
	private String title;
	private String start;
	private String end;
	private long user;
	

}

package spring.service;

import java.util.Date;

public class UploadDto {
	
	private int subjectNum;
	private String subjectName;
	private String name;
	private String t_phone;
	private String t_email;
	private Date startTime;
	private Date endTime;
	private String subjectImage;
	private String content;
	private int cost;
	
	public UploadDto() {}

	public UploadDto(int subjectNum, String subjectName, String name, String t_phone, String t_email, Date startTime,
			Date endTime, String subjectImage, String content, int cost) {
		super();
		this.subjectNum = subjectNum;
		this.subjectName = subjectName;
		this.name = name;
		this.t_phone = t_phone;
		this.t_email = t_email;
		this.startTime = startTime;
		this.endTime = endTime;
		this.subjectImage = subjectImage;
		this.content = content;
		this.cost = cost;
	}

	public int getSubjectNum() {
		return subjectNum;
	}

	public void setSubjectNum(int subjectNum) {
		this.subjectNum = subjectNum;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getT_phone() {
		return t_phone;
	}

	public void setT_phone(String t_phone) {
		this.t_phone = t_phone;
	}

	public String getT_email() {
		return t_email;
	}

	public void setT_email(String t_email) {
		this.t_email = t_email;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getSubjectImage() {
		return subjectImage;
	}

	public void setSubjectImage(String subjectImage) {
		this.subjectImage = subjectImage;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}	
}

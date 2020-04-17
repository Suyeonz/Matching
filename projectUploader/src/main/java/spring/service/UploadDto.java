package spring.service;

public class UploadDto {
	
	private int subjectNum;
	private String subjectName;
	private String startTime;
	private String endTime;
	private String subjectImage;
	private String content;
	private int cost;
	
	public UploadDto() {}
	
	

	public UploadDto(int subjectNum, String subjectName, String startTime, String endTime, String subjectImage,
			String content, int cost) {
		super();
		this.subjectNum = subjectNum;
		this.subjectName = subjectName;
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

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
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

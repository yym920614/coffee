package org.coffee.domain;

import java.util.Date;

public class BoardVO {
	
	private Integer bno;
	private String userid;
	private Integer cno;
	private String content;
	private Date regdate;
	
	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Integer getCno() {
		return cno;
	}
	public void setCno(Integer cno) {
		this.cno = cno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", userid=" + userid + ", cno=" + cno + ", content=" + content + ", regdate="
				+ regdate + "]";
	}
	
	
	

}

package org.coffee.domain;

public class CoffeeVO {
	
	private Integer cno;
	private String cname;
	private Integer price;
	private String cinfo;	
	
	public Integer getCno() {
		return cno;
	}
	public void setCno(Integer cno) {
		this.cno = cno;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getCinfo() {
		return cinfo;
	}
	public void setCinfo(String cinfo) {
		this.cinfo = cinfo;
	}
	
	@Override
	public String toString() {
		return "CoffeeVO [cno=" + cno + ", cname=" + cname + ", price=" + price + ", cinfo=" + cinfo + "]";
	}
	
	
	

}

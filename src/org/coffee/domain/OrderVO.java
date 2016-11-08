package org.coffee.domain;

import java.util.Date;

public class OrderVO {
	
	private Integer ono;
	private String userid;
	private Integer cno;
	private Integer count;
	private Integer total;
	private Date orderDate;
	
	
	public Integer getOno() {
		return ono;
	}
	public void setOno(Integer ono) {
		this.ono = ono;
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
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	
	@Override
	public String toString() {
		return "OrderVO [ono=" + ono + ", userid=" + userid + ", cno=" + cno + ", count=" + count + ", total=" + total
				+ ", orderDate=" + orderDate + "]";
	}
	
	

}

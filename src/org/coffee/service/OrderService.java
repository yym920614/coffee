package org.coffee.service;

import java.util.List;

import org.coffee.domain.OrderVO;
import org.coffee.persistence.OrderDAO;

public enum OrderService {

	INSTANCE;
	
	public void resisterOrder(OrderVO vo)throws Exception{
		OrderDAO.INSTANCE.create(vo);
	}
	
	public List<OrderVO> getList(String userid) throws Exception{
		return OrderDAO.INSTANCE.read(userid);
	}
	
}

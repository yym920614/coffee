package org.coffee.service;

import org.coffee.domain.MemberVO;
import org.coffee.persistence.MemberDAO;

public enum MemberService {

	INSTANCE;

	public String login(MemberVO vo) throws Exception {

		return MemberDAO.INSTANCE.login(vo);
	}

	public String create(MemberVO vo) throws Exception {
		return MemberDAO.INSTANCE.create(vo);
	}

	public MemberVO read(String userid) throws Exception {
		return MemberDAO.INSTANCE.read(userid);
	}

}

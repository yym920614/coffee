package org.coffee.test;

import org.coffee.domain.MemberVO;
import org.coffee.persistence.MemberDAO;
import org.junit.Test;

public class LoginDAOTest {
	
	MemberVO vo;
	
	@Test
	public void test()throws Exception {
		
		MemberVO vo = new MemberVO();
		vo.setUserid("jinsu");
		vo.setUserpw("jinsu");
		
		MemberDAO.INSTANCE.login(vo);
	}

}

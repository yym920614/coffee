package org.coffee.persistence;

import java.util.ArrayList;
import java.util.List;

import org.coffee.domain.MemberVO;

public enum MemberDAO {

	INSTANCE;

	public String login(MemberVO vo) throws Exception {

		String sql = "select * from tbl_member where userid=? and userpw=?";
		StringBuffer buffer = new StringBuffer();

		new ConnectDAO() {

			@Override
			public void doExecute() throws Exception {
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, vo.getUserid());
				pstmt.setString(2, vo.getUserpw());

				int result = pstmt.executeUpdate();
				buffer.append(result);

				System.out.println(result);

			}

		}.execute();

		return buffer.toString();
	}

	public String create(MemberVO vo) throws Exception {
		String sql = " insert into tbl_member(userid,userpw,uname,phonenum,address)" + " values (?,?,?,?,?)";
		StringBuffer buffer = new StringBuffer();
		new ConnectDAO() {

			@Override
			public void doExecute() throws Exception {

				pstmt = con.prepareStatement(sql);

				pstmt.setString(1, vo.getUserid());
				pstmt.setString(2, vo.getUserpw());
				pstmt.setString(3, vo.getUname());
				pstmt.setString(4, vo.getPhoneNum());
				pstmt.setString(5, vo.getAddress());

				int result = pstmt.executeUpdate();
				buffer.append(result);

			}
		}.execute();
		
		return buffer.toString();
	}

	
	public MemberVO read(String userid) throws Exception {

	      String sql = "select * from tbl_member where userid = ?";
	      List<MemberVO> resultArr = new ArrayList<>();

	      new ConnectDAO() {

	         @Override
	         public void doExecute() throws Exception {
	            pstmt = con.prepareStatement(sql);
	            pstmt.setString(1, userid);

	            rs = pstmt.executeQuery();

	            if (rs.next()) {
	               MemberVO vo = new MemberVO();
	               vo.setUserid(rs.getString("userid"));
	               vo.setUname(rs.getString("uname"));
	               vo.setAddress(rs.getString("address"));
	               vo.setPhoneNum(rs.getString("phonenum"));

	               resultArr.add(vo);
	            }

	         }
	      }.execute();

	      return resultArr.get(0);

	   }
	
}

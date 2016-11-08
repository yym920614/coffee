package org.coffee.persistence;

import java.util.ArrayList;
import java.util.List;

import org.coffee.domain.OrderVO;

public enum OrderDAO {

	INSTANCE;
	public void create(OrderVO vo) throws Exception {

		String sql = "insert into tbl_order (ono, userid, cno, count, total)"
				+ " values (seq_ono.nextval, ?, ?, ?, ?)";
		new ConnectDAO() {

			@Override
			public void doExecute() throws Exception { // 실행되는 애

				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, vo.getUserid());
				pstmt.setInt(2, vo.getCno());
				pstmt.setInt(3, vo.getCount());
				pstmt.setInt(4, vo.getTotal());

				pstmt.executeQuery();

				
	}
		}.execute();
	}

	public List<OrderVO> read(String userid) throws Exception {
		List<OrderVO> list = new ArrayList<>();

		String sql = "select * from tbl_order where userid=? order by orderdate desc";

		new ConnectDAO() {

			@Override
			public void doExecute() throws Exception { // 실행되는 애

				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, userid);


				System.out.println(userid);
				rs = pstmt.executeQuery();

				while (rs.next()) {

					OrderVO vo = new OrderVO();
					
					vo.setOno(rs.getInt("ono"));
					vo.setCno(rs.getInt("cno"));
					vo.setCount(rs.getInt("count"));
					vo.setTotal(rs.getInt("total"));
					vo.setOrderDate(rs.getDate("orderdate"));

					list.add(vo);

				}
			}
		}.execute();

		return list;
	}

}

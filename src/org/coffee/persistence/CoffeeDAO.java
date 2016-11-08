package org.coffee.persistence;

import java.util.ArrayList;
import java.util.List;

import org.coffee.domain.CoffeeVO;

public enum CoffeeDAO {

   INSTANCE;

   public CoffeeVO read(Integer cno) throws Exception {

      String sql = "select * from tbl_coffee where cno = ?";
      List<CoffeeVO> resultArr = new ArrayList<>();

      new ConnectDAO() {

         @Override
         public void doExecute() throws Exception {
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, cno);

            rs = pstmt.executeQuery();

            if (rs.next()) {
               CoffeeVO vo = new CoffeeVO();
               vo.setCno(rs.getInt("cno"));
               vo.setCname(rs.getString("cname"));
               vo.setPrice(rs.getInt("price"));
               vo.setCinfo(rs.getString("cinfo"));

               resultArr.add(vo);
            }

         }
      }.execute();

      return resultArr.get(0);

   }

}
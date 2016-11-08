package org.coffee.persistence;

import java.util.ArrayList;
import java.util.List;

import org.coffee.domain.BoardVO;

public enum BoardDAO {

   INSTANCE;
   
   public void create(BoardVO bvo) throws Exception{
      String sql = "insert into tbl_board(BNO,USERID,CNO,CONTENT) values(SEQ_vno.NEXTVAL,?,?,?)";
      
      new ConnectDAO(){

         @Override
         public void doExecute() throws Exception {
            
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, bvo.getUserid());
            pstmt.setInt(2, bvo.getCno());
            pstmt.setString(3, bvo.getContent());
            pstmt.executeUpdate();
         }
      }.execute();
   
   }
   
   
   public  List<BoardVO> read(Integer cno) throws Exception{
      
      
      String sql = "select * from tbl_board where cno = ? order by REGDATE desc";
      List<BoardVO> arr = new ArrayList<>();   
      new ConnectDAO(){
         @Override
         public void doExecute() throws Exception {
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1,cno);
            
            rs = pstmt.executeQuery();

            while (rs.next()) {
               BoardVO bvo = new BoardVO();
               bvo.setBno(rs.getInt("bno"));
               bvo.setUserid(rs.getString("userid"));
               bvo.setCno(rs.getInt("cno"));
               bvo.setContent(rs.getString("content"));
               bvo.setRegdate(rs.getDate("regdate"));
               
               arr.add(bvo);
            }// end while   
      };
   }.execute();//end connectDao
   return arr;
   }//end read
}// end enum
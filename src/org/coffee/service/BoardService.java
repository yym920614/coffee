package org.coffee.service;

import java.util.List;

import org.coffee.domain.BoardVO;
import org.coffee.persistence.BoardDAO;

public enum BoardService {
   
   INSTANCE;
   
   
   public void create(BoardVO bvo) throws Exception{
         BoardDAO.INSTANCE.create(bvo);
   }
   
   public List<BoardVO> read(Integer cno) throws Exception{
      return BoardDAO.INSTANCE.read(cno);
      
   }

}
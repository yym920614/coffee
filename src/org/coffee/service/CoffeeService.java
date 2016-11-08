package org.coffee.service;

import java.util.List;

import org.coffee.domain.CoffeeVO;
import org.coffee.persistence.CoffeeDAO;

public enum CoffeeService {

   INSTANCE;

   public CoffeeVO read(int cno) throws Exception{
      return CoffeeDAO.INSTANCE.read(cno);
   }


}
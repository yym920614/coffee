package org.coffee.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class CookieUtil {
	
	static public Cookie findCookie(String name, HttpServletRequest req)throws Exception{
		
		Cookie[] arr = req.getCookies();
		
		if(arr == null || arr.length == 0){
			return null;
		}
		
		for(Cookie cookie :  arr ){
			
			if(cookie.getName().equals(name)){
				return cookie;
			}
		}
		return null;
		
	}

}

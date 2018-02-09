package com.web.kyh1.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
//extends HandlerInterceptorAdapter을 상속받으면 Source->override에서 4번쨰prehandler을 눌러 컨트롤러로오기전의 설정을 해준다.
public class MainInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//세션 객체 얻기
		HttpSession httpsession = request.getSession();
		
		//현재 표시된주소 얻기
		//Ex)login.do?page=1 방식으로 받게되면
		
		String path = request.getServletPath();
		String query = request.getQueryString();
		
		//query가 존재하지 않는 주소이냐?
		if(query == null) {
			httpsession.setAttribute("_url", path);
			
			
		}else{  //query가 존재하는 주소이냐?
			httpsession.setAttribute("_url", path+"?"+query);
		}
		//결과 확인 용 콘솔.
		System.out.println(path);
		//true 면 controller가 실행
		return true;
	}

}

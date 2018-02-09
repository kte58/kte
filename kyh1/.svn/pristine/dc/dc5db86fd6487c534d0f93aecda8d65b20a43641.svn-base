package com.web.kyh1;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.kyh1.dao.V3_MemberDAO;
import com.web.kyh1.vo.V3_Member;

@Controller
public class JoinController {
	
	@Autowired
	private V3_MemberDAO mDAO = null;

	@RequestMapping(value = "/join.do", method = RequestMethod.GET)
	public String join( ) {
		//화면이 표시됨(단순 화면만)
		return "join";
		
		
	}
	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String join(HttpServletRequest request, HttpServletResponse response) {
		
		
		//화면에서 사용자가 넣는 값을 받아옴.
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		
		//받은 값을vo로 만들어 보냄.
		V3_Member vo = new V3_Member();
		vo.setEmail(email);
		vo.setPw(pw);
		vo.setName(name);
		vo.setPhone(phone);
		
		
	    //받아온값을data에 넣어줌 
		mDAO.insertMember(vo);
		
		
		return "redirect:/";
		
		
	}
	
	


}

package com.web.kyh1;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.kyh1.dao.V3_MemberDAO;
import com.web.kyh1.vo.V3_Member;

@Controller
public class EditController {
	
	@Autowired
	private V3_MemberDAO eDAO = null;

	@RequestMapping(value = "/edit.do", method = RequestMethod.GET)
	public String edit(HttpSession httpSession) {
		
		V3_MemberDAO eDAO = new V3_MemberDAO();

		String email = (String) httpSession.getAttribute("email");

		V3_Member vo = new V3_Member();
		vo.setEmail("email");
		
		
		return "edit"; // 화면표시됨
	}
	
	
	@RequestMapping(value = "/edit.do", method = RequestMethod.POST)
	public String edit(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		
		V3_Member vo = new V3_Member(); 
		vo.setEmail(email);
		vo.setName(name);
		vo.setPhone(phone);
		
		eDAO.editMember(vo);
		
		
		
		
		
		return "edit"; // 화면표시됨
	}
	
}

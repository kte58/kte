package com.web.kyh1;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.kyh1.vo.V3_Member;
import com.web.kyh1.dao.V3_MemberDAO;

@Controller
public class MemberController {
	// @Autowired 는중복안됨
	

	@Autowired
	private RedisTemplate<String, Object> objTemplate = null;

	@Autowired
	private RedisTemplate<String, String>strTemplate = null;
	
	@Autowired
	private V3_MemberDAO mDAO = null;

	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login() {
		return "login"; // 화면표시됨
	}

	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(HttpServletRequest request, HttpSession httpsession) {
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		V3_Member vo = new V3_Member();
		vo.setEmail(email);
		vo.setPw(pw);

		// 1. DAO의 login메소드 호출
		// 2. DAO는 xml의 login을 호출
		// 3. login안에 포함된 SQL문을 수행함.

		V3_Member vo1 = mDAO.login(vo);
		if (vo1 == null) {
			request.setAttribute("msg", "이메일/암호가 틀립니다.");
			request.setAttribute("url", "login.do");
			return "alert";
		} else {
			//redis 서버에 값을 넣음.
			//strTemplate.opsForValue().set(vo1.getEmail(),vo1.getName());
			
			objTemplate.opsForValue().set(vo1.getEmail(),vo1);
			
			V3_Member vo2 = (V3_Member)objTemplate.opsForValue().get(vo1.getEmail());
			//redis 서버에 값을 가져옴.
			//String tmp = strTemplate.opsForValue().get(vo1.getEmail());
			
			System.out.println(vo2.getPhone());
			
			httpsession.setAttribute("_email", vo1.getEmail());
			httpsession.setAttribute("_name", vo1.getName());
			
			//세션에서 되돌아 갈 url주소를 얻음
			String url = (String)httpsession.getAttribute("_url");
			
			//url에 담긴 주소로 이동함.
			return "redirect:"+url; // home화면

		}

	}

	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout(HttpSession httpsession) {
		
		String em = (String)httpsession.getAttribute("_email");
		
		objTemplate.opsForValue().set(em, null);
		
		// 세션 만료 시키고 다시 생성 -세션에 저장했던 값이 다 지워짐
		httpsession.invalidate();

		return "redirect:/";
	}

}

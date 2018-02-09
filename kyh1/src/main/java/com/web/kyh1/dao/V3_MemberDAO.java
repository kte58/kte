package com.web.kyh1.dao;

import javax.annotation.Resource;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.web.kyh1.vo.V3_Member;

//DAO일 경우
@Service
public class V3_MemberDAO {
	/*
	mybatis-context.xml의 마지막 bean의 ID값을
	Resource의 name값으로 넣음.
	sqlSession이 1개일 경우는 생략가능함.
	<bean id="sqlSession" 
	*/
	
	@Autowired
	@Resource(name="sqlSession")
	private SqlSession sqlsession = null;
	
	public int editMember(V3_Member vo) {
		return sqlsession.update("V3_Member.edit" , vo);
	}
	
	
	
	//회원가입정보를 받음
	public int insertMember(V3_Member vo) {
		return sqlsession.insert("V3_Member.insertMember" , vo);
	}
	
	public V3_Member login(V3_Member vo) {
		return sqlsession.selectOne("V3_Member.login", vo);
	}
}


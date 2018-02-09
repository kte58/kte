package com.web.kyh1.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.kyh1.vo.V3_Board;
import com.web.kyh1.vo.V3_Board_Img;

@Service
public class V3_BoardDAO {

	@Autowired
	@Resource(name = "sqlSession")
	private SqlSession sqlsession = null;

	// 이미지가 안들어갈경우(부적절한 유형)-->insert(V3_Board.insertBoardImg", vo 확인)
	public int insertBoardImg(V3_Board_Img vo) {
		return sqlsession.insert("V3_Board.insertBoardImg", vo);
	}

	public List<V3_Board> selectBoardList(int page) {
		return sqlsession.selectList("V3_Board.selectBoardList", page);
	}

	// v3_board테이블의 마지막 글번호 얻기
	public int getLastNo() {
		return sqlsession.selectOne("V3_Board.getLastNo");
	}

	public int insertBoard(V3_Board vo) {
		return sqlsession.insert("V3_Board.insertBoard", vo);
	}

}

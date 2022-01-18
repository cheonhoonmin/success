package com.mvc.board.Dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.board.Dto.BoardDto;

@Repository
public class BoardDaoImpl implements BoardDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<BoardDto> selectList() {
		List<BoardDto> list = new ArrayList<BoardDto>();
		
		try {
			list=sqlSession.selectList(NAMESPACE+"selectList");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list; //biz가 받아 controller로 리턴 넘겨줄거임
	}

	@Override
	public BoardDto selectOne(int bd_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(BoardDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(BoardDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int bd_no) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	

}

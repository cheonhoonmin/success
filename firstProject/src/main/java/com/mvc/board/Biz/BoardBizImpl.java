package com.mvc.board.Biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.board.Dao.BoardDao;
import com.mvc.board.Dao.BoardDaoImpl;
import com.mvc.board.Dto.BoardDto;

@Service
public  class BoardBizImpl implements BoardBiz {

	@Autowired
	private BoardDaoImpl dao;
	
	@Override
	public List<BoardDto> selectList() {
		
		return dao.selectList();
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

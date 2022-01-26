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
		
		return dao.selectOne(bd_no);
	}
	
	@Override
	public int insert(BoardDto dto) {
		
		return dao.insert(dto);
	}

	@Override
	public int update(BoardDto dto) {
		
		return dao.update(dto);
	}

	@Override
	public int delete(int bd_no) {
		
		return dao.delete(bd_no);
	}
	
	

}

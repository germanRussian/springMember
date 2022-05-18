package com.kb.mapper;

import java.util.List;

import com.kb.domain.BoardVO;

public interface BoardMapper {

	// C 등록
	public void insert(BoardVO board);

	// R 목록 보기
	public List<BoardVO> getList();
	
	// R 상세보기
	public BoardVO read(int bno);
	
	// U 
	public void update(BoardVO board);
	
	// D
	public void delete(int bno);
}

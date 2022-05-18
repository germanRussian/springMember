package com.kb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kb.domain.BoardVO;

@Mapper
public interface BoardMapper {

	// C 등록
	public void insert(BoardVO board);

	// R 목록 보기
	public List<BoardVO> getList();
	
	// R 상세보기
	public BoardVO read(int bno);
	
	// U 
	public int update(BoardVO board);
	
	// D
	public int delete(int bno);
}

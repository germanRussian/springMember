package com.kb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kb.domain.BoardVO;
import com.kb.domain.Criteria;

@Mapper
public interface BoardMapper {

	// C 등록
	public void insert(BoardVO board);

	// R 목록 보기
	public List<BoardVO> getList();
	
	

	// R 목록 보기 - Paging1
	public List<BoardVO> getListWithPaging(Criteria cri);
	
	// R 목록 보기 - Paging2
	public int getListWithcnt();

	
	
	// R 상세보기
	public BoardVO read(int bno);

	// U
	public int update(BoardVO board);

	// D
	public int delete(int bno);

	
}

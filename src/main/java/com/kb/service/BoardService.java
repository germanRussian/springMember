package com.kb.service;

import java.util.List;

import com.kb.domain.BoardVO;

public interface BoardService {

	// C 생성  insert 대신 register
	public void register(BoardVO board);

	// R 목록 보기
	public List<BoardVO> getList();

	// R 읽기 상세 페이지 가져오기 read대신 get
	public BoardVO get(int bno);

	// U 수정 
	public boolean modify(BoardVO board);

	// D
	public boolean remove(int bno);

}

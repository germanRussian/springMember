package com.kb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kb.domain.BoardVO;
import com.kb.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Service
@Log4j
@AllArgsConstructor
public class BoardServiceImpl implements BoardService{
	
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	
	
	// service - c 확인
	@Override
	public void register(BoardVO board) {
		log.info("register................");
		mapper.insert(board);
	}
	
	
	// service - R 목록 보기
	@Override
	public List<BoardVO> getList() {
		log.info("getList.................");
		return mapper.getList();
	}

	// service - R 상세보기
	@Override
	public BoardVO get(int bno) {
		log.info("get...................");
		return mapper.read(bno);
	}

	// service - U 업데이트
	@Override
	public boolean modify(BoardVO board) {
		log.info("modify...................");
		return mapper.update(board) == 1;
	}

	// service - D 삭제
	@Override
	public boolean remove(int bno) {
		log.info("remove...................");
		return mapper.delete(bno) == 1;
		//1(true)
	}

}

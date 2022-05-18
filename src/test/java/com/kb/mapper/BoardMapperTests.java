package com.kb.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kb.domain.BoardVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
//JUnit - 단위테스트
public class BoardMapperTests {

	@Setter(onMethod_ = @Autowired)
	BoardMapper mapper;

	// c 확인
	public void insert() {

		BoardVO board = new BoardVO();
		board.setTitle("내용 11");
		board.setContent("내용 22");
		board.setWriter("내용 33");
		mapper.insert(board);
	}

	// R 목록 보기
	public void getListTest() {
		log.info(mapper.getList());
	}

	// R 상세보기
	public void read() {
		log.info(mapper.read(2039));
	}

	// U 업데이트
	
	public void update() {
		BoardVO board = new BoardVO();
		board.setBno(2039);
		board.setTitle("내용11수정");
		board.setContent("내용22수정");
		board.setWriter("내용33수정");
		mapper.update(board);
	}

	// D 삭제
	@Test
	public void delete() {
		mapper.delete(2040);
	}

}

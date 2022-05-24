package com.kb.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kb.domain.BoardVO;
import com.kb.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
public class BoardServiceImplTests {

	@Setter(onMethod_ = @Autowired)
	private BoardService service;

	// service - c 확인
	public void registerTest() {

		BoardVO board = new BoardVO();
		board.setTitle("내용 11rrr");
		board.setContent("내용 22rrr");
		board.setWriter("내용 33rrr");
		service.register(board);
	}

	// service - R 목록 보기

	public void getListTest() {

		log.info(service.getList());
	}

	// service - R 상세보기

	public void getTest() {

		log.info(service.get(2039));
	}

	// service - R 상세보기 - paging
	@Test
	public void getListWithPagingTest() {
		Criteria cri = new Criteria();
		service.getListWithPaging(cri);
		log.info("paging");
	}

	// service - U 업데이트

	public void modifyTest() {

		BoardVO board = new BoardVO();
		board.setBno(2038);
		board.setTitle("수정 됨");
		board.setContent("수정 됨");
		board.setWriter("수정 됨");
		service.modify(board);
	}

	// service - D 삭제
	
	public void removeTest() {

		service.remove(2041);
	}

}

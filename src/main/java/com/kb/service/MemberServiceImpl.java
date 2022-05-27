package com.kb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kb.domain.MemberVO;
import com.kb.domain.MemberCriteria;
import com.kb.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {

	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;

	// service - c 확인
	@Override
	public void register(MemberVO member) {
		log.info("register................");
		mapper.insert(member);
	}

	// service - R 목록 보기
	@Override
	public List<MemberVO> getList() {
		log.info("getList.................");
		return mapper.getList();
	}

	
	//service - R 목록 보기 - paging1
	@Override
	public List<MemberVO> getListWithPaging(MemberCriteria cri) {
		log.info("getListWithPaging.................");
		return mapper.getListWithPaging(cri);
	}
	
	//service - R 목록 보기 - paging2 검색 페이징 값
	@Override
	public int getListWithcnt(MemberCriteria cri) {
		log.info("getListWithcnt...................");
		return mapper.getListWithcnt(cri);
	}
	

	// service - R 상세보기
	@Override
	public MemberVO get(int num) {
		log.info("get...................");
		return mapper.read(num);
	}

	// service - U 업데이트
	@Override
	public boolean modify(MemberVO member) {
		log.info("modify...................");
		return mapper.update(member) == 1;
	}

	// service - D 삭제
	@Override
	public boolean remove(int num) {
		log.info("remove...................");
		return mapper.delete(num) == 1;
		// 1(true)
	}

	

	

}

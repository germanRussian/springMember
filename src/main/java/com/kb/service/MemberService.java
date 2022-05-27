package com.kb.service;

import java.util.List;

import com.kb.domain.MemberVO;
import com.kb.domain.MemberCriteria;

public interface MemberService {

	// C 생성 insert 대신 register
	public void register(MemberVO member);

	// R 목록 보기
	public List<MemberVO> getList();

	// R 목록 보기 - paging
	public List<MemberVO> getListWithPaging(MemberCriteria cri);

	// R 읽기 상세 페이지 가져오기 read대신 get
	public MemberVO get(int num);

	// U 수정
	public boolean modify(MemberVO member);

	// D
	public boolean remove(int num);

	//검색 페이징 값
	public int getListWithcnt(MemberCriteria cri);

}

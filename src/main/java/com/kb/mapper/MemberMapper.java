package com.kb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kb.domain.MemberVO;
import com.kb.domain.MemberCriteria;

@Mapper
public interface MemberMapper {

	// C 등록
	public void insert(MemberVO member);

	// R 목록 보기
	public List<MemberVO> getList();
	
	

	// R 목록 보기 - Paging1
	public List<MemberVO> getListWithPaging(MemberCriteria cri);
	
	// R 목록 보기 - Paging2 검색 페이징 값
	public int getListWithcnt(MemberCriteria cri);

	
	
	// R 상세보기
	public MemberVO read(int num);

	// U
	public int update(MemberVO member);

	// D
	public int delete(int num);

	
}

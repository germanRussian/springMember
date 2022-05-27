package com.kb.domain;

import lombok.Data;

@Data
public class MemberCriteria {
	
	private int pageNum;//현재 페이지 번호
	private int amount;//한페이지 당 보여지는  게시글 수
	
	private String type;
	private String keyword;

	
	//디폴트 생성자
	public MemberCriteria() {
		this(1,10);//pageNum, amount
	}

	//필드를 활용한 생성자
	public MemberCriteria(int pageNum, int amount) {
		
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public int getPageStart() {
		return (getPageNum()-1)*getAmount();
	}
	
	//
	

	

}

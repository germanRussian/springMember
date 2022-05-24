package com.kb.domain;


import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {
	
	private int startPage;//시작페이지다.
	private int endPage;//끝페이지다.
	
	private boolean prev, next;//이전 다음 값
	
	private int total;//전체 레코드수
	private Criteria cri;// 현재페이지, 한페이지에 보여지는 게시글 수
	
	
	public PageDTO(int total, Criteria cri) {
		
		this.total = total;
		this.cri = cri;
		
		this.endPage = (int)(Math.ceil(cri.getPageNum()/5.0))*5;
		this.startPage = this.endPage -4;
		int realEnd = (int)(Math.ceil((total*1.0)/cri.getAmount()));
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		this.prev = this.startPage > 1;
		this.next = this.endPage <realEnd;
	}
	
	

}

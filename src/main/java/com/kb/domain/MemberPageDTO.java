package com.kb.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class MemberPageDTO {

	private int startPage;// 시작페이지다.
	private int endPage;// 끝페이지다.

	private boolean prev, next;// 이전 다음 값

	private int total;// 전체 레코드수
	private MemberCriteria cri;// 현재페이지, 한페이지에 보여지는 게시글 수
	private final int PAGE_NUM = 5;//아래 페이징 숫자 조절

	public MemberPageDTO(int total, MemberCriteria cri) {

		this.total = total;
		this.cri = cri;

		this.endPage = (int) (Math.ceil(cri.getPageNum() / (PAGE_NUM * 1.0))) * PAGE_NUM;

		this.startPage = this.endPage - (PAGE_NUM - 1);
		
		int realEnd = (int) (Math.ceil((total * 1.0) / cri.getAmount()));
		if (realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
	}

}

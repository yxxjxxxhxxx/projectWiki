package com.coding404.util;

import lombok.Data;

@Data //getter, setter, toString
public class Criteria {
	private int page;// 조회하는 페이지번호
	private int amount;// 조회하는 데이터개수
	
	//검색키워드
	private String searchType;
	private String searchKey;
	

	// 페이지 번호가 넘어오지 않는 경우의 기본값
	public Criteria() {
		this(1, 10);
	}

	// 페이지 번호가 넘어오는 경우
	public Criteria(int page, int amount) {
		this.page = page;
		this.amount = amount;
	}

	// limit 구문의 첫번째 값에 전달될 getter메서드
	public int getPageStart() {
		return (page - 1) * amount;
	}

}

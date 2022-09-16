package com.coding404.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data 
@NoArgsConstructor
@AllArgsConstructor
public class MemberVO {

	private int eno;
	private String id; // 사용자 아이디
	private String pw; // 사용자 패스워드
	private String pw2;

	public MemberVO(int eno, String id, String pw) {
		super();
		this.eno = eno;
		this.id = id;
		this.pw = pw;
	}

}

package com.coding404.command;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class NoticeVO {

	private int eno;
	private String id; // 사용자 아이디
	private String title; // 게시글 제목
	private String content; // 게시글 내용
	private int hit; // 조회수
	private LocalDateTime regdate; // 게시글 작성 시간?
}

package com.coding404.trip.service;

import java.util.List;

import com.coding404.command.MemberVO;
import com.coding404.command.NoticeVO;
import com.coding404.util.Criteria;

public interface WikiMapper {
	public int join(MemberVO vo); //회원가입
	public MemberVO login(MemberVO vo);//로그인
	public int checkId(MemberVO vo); // ID중복 확인
	
	public List<NoticeVO> getList(Criteria cri); // service 이하 동문
	public int write(NoticeVO vo);

	public int noticeUpdate(NoticeVO vo); 
	
	public List<NoticeVO> getMylist(String id); // notice_mylist에 작성자의 글 불러오기
	public int updatePW(MemberVO vo); // 비밀번호 변경
	public NoticeVO getDetail(int eno); // view 화면
	public int errorDelete(int eno); // 글 삭제
	public int upHit(int eno); // 조회수 증가
	
	//public MemberVO getMyList(); //1:다
//	public List<Map<String, Object>> getMyList2(); //다:1
}

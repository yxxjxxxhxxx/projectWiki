package com.coding404.trip.service;

import java.util.List;

import com.coding404.command.MemberVO;
import com.coding404.command.NoticeVO;
import com.coding404.util.Criteria;

public interface WikiService {
	public int noticeUpdate(NoticeVO vo); //업데이트
	
	public int join(MemberVO vo); //회원가입
	public MemberVO login(MemberVO vo);//로그인
	public List<NoticeVO> getList(Criteria cri);
	
	public int write(NoticeVO vo);
	
	public List<NoticeVO> getMylist(String id);
	public int updatePW(MemberVO vo);
	public NoticeVO getDetail(int eno);
	public int errorDelete(int eno);
	public int upHit(int eno);
	
	//public MemberVO getMyList();
	//public List<Map<String, Object>> getMyList2(); //다:1
}

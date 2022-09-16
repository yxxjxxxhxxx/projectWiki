package com.coding404.trip.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coding404.command.MemberVO;
import com.coding404.command.NoticeVO;
import com.coding404.util.Criteria;

@Service("wikiService")
public class WikiServiceImpl implements WikiService {

	@Autowired
	WikiMapper wikiMapper;

	@Override
	public int join(MemberVO vo) {

		int result = wikiMapper.checkId(vo);

		if (result == 0) {
			return wikiMapper.join(vo);
		} else {
			return 0;
		}

	}

	@Override
	public MemberVO login(MemberVO vo) {
		return wikiMapper.login(vo);

	}

	@Override
	public List<NoticeVO> getList(Criteria cri) {

		return wikiMapper.getList(cri);
	}

	@Override
	public int write(NoticeVO vo) {

		return wikiMapper.write(vo);
	}

	@Override
	public int noticeUpdate(NoticeVO vo) {

		return wikiMapper.noticeUpdate(vo);
	}

	@Override
	public List<NoticeVO> getMylist(String id) {

		return wikiMapper.getMylist(id);
	}

	@Override
	public int updatePW(MemberVO vo) {

		return wikiMapper.updatePW(vo);
	}

	@Override
	public NoticeVO getDetail(int eno) {

		return wikiMapper.getDetail(eno);
	}

	@Override
	public int errorDelete(int eno) {

		return wikiMapper.errorDelete(eno);
	}

	@Override
	public int upHit(int eno) {

		return wikiMapper.upHit(eno);
	}

	/*
	 * @Override public MemberVO getMyList() { return wikiMapper.getMyList(); }
	 */

	/*
	 * 다 : 1
	 * 
	 * @Override public List<Map<String, Object>> getMyList2() { // TODO
	 * Auto-generated method stub return wikiMapper.getMyList2(); }
	 */

}

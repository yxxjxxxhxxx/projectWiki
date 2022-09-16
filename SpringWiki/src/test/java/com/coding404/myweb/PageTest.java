package com.coding404.myweb;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.coding404.trip.service.WikiMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/root-context.xml")
public class PageTest {

	@Autowired
	WikiMapper tripMapper;

//	@Test
//	public void testCode01() {
//
//		for (int i = 1; i <= 300; i++) {
//			TripVO vo = new TripVO();
//			vo.setTripdate("2022-01-04");
//			vo.setWriter("admin" + i);
//			vo.setTitle("test" + i);
//			vo.setContent("admin" + i);
//			tripMapper.noticeRegist(vo);
//		}
//	}
}

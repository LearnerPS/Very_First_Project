package org.sesac.project1.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.sesac.Rtour.vo.MemberVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RtourController {
	
	@Autowired
	private SqlSession session;
	private String ns = "org.sesac.config.mappers.Rtour";
	
	//회원가입
	@RequestMapping("/Rtour/join")
	public String Rtour_join() {
		
		return "Rtour/join";
	}

	@RequestMapping("/Rtour/join_action")
	public String Rtour_join_action(MemberVo vo) {
		
		System.out.println("join_action: "+vo);
		session.insert(ns +".insert", vo);
		
		return "redirect:/Rtour/join";
	}
	
	//회원정보열람
	@RequestMapping("/Rtour/member")
	public String Rtour_member(Model model) {
		
		List<MemberVo> list = session.selectList(ns+".selectAll");
		model.addAttribute("member", list);
		return "Rtour/member";
	}
	
	//회원정보수정
	@RequestMapping("/Rtour/edit")
	public String Rtour_edit() {
		
		return "Rtour/edit";
	}
	
}

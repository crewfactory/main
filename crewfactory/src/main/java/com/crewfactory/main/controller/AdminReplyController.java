package com.crewfactory.main.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.crewfactory.main.domain.ReplyDomain;
import com.crewfactory.main.service.ReplyService;

@Controller
public class AdminReplyController {
	
	@Autowired
	ReplyService service;
	
	@RequestMapping(value="manager/reply/list.do", method=RequestMethod.GET)
	public String list (HttpServletRequest request, Model model) throws Exception {
		model.addAttribute("result", service.selectByAdmin());
		return "admin/reply/ReplyList";
	}
	
	@RequestMapping(value="manager/reply/view.do", method=RequestMethod.GET)
	public String view (@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.viewByAdmin(idx));
		return "admin/reply/ReplyView";
	}
	
	@RequestMapping(value="manager/reply/write.do", method=RequestMethod.GET)
	public String write (Model model) throws Exception {
		return "admin/reply/ReplyWrite";
	}
	
	@RequestMapping(value="/manager/reply/insert.do", method=RequestMethod.POST)
	public String insert(@ModelAttribute("@manager") ReplyDomain domain) throws Exception {
		service.insert(domain);
		return "redirect:/manager/reply/list.do";
	}
	
	@RequestMapping(value="manager/reply/update.do", method=RequestMethod.POST)
	public String update (@ModelAttribute("@manager") ReplyDomain domain) throws Exception {		
		service.update(domain);		
		return "redirect:/manager/reply/list.do";
	}
	
	@RequestMapping(value="manager/reply/delete.do", method=RequestMethod.GET)
	public String delete (@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/reply/list.do";
	}

}

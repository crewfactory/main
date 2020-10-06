package com.crewfactory.main.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.domain.AuthDomain;
import com.crewfactory.main.domain.MessageDomain;
import com.crewfactory.main.domain.SearchDomain;
import com.crewfactory.main.service.AnnounceService;
import com.crewfactory.main.service.AuthService;
import com.crewfactory.main.service.BlogService;
import com.crewfactory.main.service.CounterService;
import com.crewfactory.main.service.IPBlockService;
import com.crewfactory.main.service.ProfessorService;
import com.crewfactory.main.service.RecruitService;
import com.crewfactory.main.service.ReplyService;
import com.crewfactory.main.service.ReviewService;
import com.crewfactory.main.service.VanalyzerService;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	AuthService auth;
	
	@Autowired
	RecruitService recruit;
	
	@Autowired
	BlogService blog;
	
	@Autowired
	ReviewService review;
	
	@Autowired
	AnnounceService announce;
	
	@Autowired
	CounterService counter;
	
	@Autowired
	VanalyzerService vanalyzer;
	
	@Autowired
	ProfessorService professor;
	
	@Autowired
	IPBlockService ipblock;
	
	@Autowired
	ReplyService reply;
	
	@RequestMapping(value="/")
	String init(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
		
		String ip = request.getHeader("X-FORWARDED-FOR");
		if (ip == null)	ip = request.getRemoteAddr();
		
		int checkBlock = ipblock.checkBlock(ip);
		
		if(checkBlock > 0) {
			return "block";
		}else {
			
			/*
			 * if (session.getAttribute("wwwcrewfactorycom_lading_session") == null) {
			 * session.setAttribute("wwwcrewfactorycom_lading_session",
			 * request.getRemoteAddr()); model.addAttribute("reviewBest",
			 * review.selectBest()); model.addAttribute("professor",
			 * professor.selectByWebHome()); return "landing"; } else {
			 */
			
			if (session.getAttribute("wwwcrewfactorycom_lading_session") != null) {
				model.addAttribute("landing", "Y");
			} else {
				model.addAttribute("landing", "N");
			}
				model.addAttribute("blogko", blog.selectBlogKoByHome());
				model.addAttribute("blogos", blog.selectBlogOsByHome());
				model.addAttribute("reviewKe", review.selectKe());
				model.addAttribute("reviewOz", review.selectOz());
				model.addAttribute("reviewKo", review.selectKo());
				model.addAttribute("reviewEa", review.selectEa());
				model.addAttribute("reviewEu", review.selectEu());
				model.addAttribute("reviewAs", review.selectAs());	
				model.addAttribute("announce", announce.selectNew());
				model.addAttribute("moment", blog.selectMomentByHome() );			
				model.addAttribute("professor", professor.selectByWebHome());
				model.addAttribute("reply", reply.selectByWebHome());
				return "index";
		}
	}
	
	
	
	@RequestMapping(value="/mobile.do")
	String mobile (HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
		
		String section = "all";
		SearchDomain search = new SearchDomain();
		search.setSearchSection(section);
		model.addAttribute("message", "Hellow World");
		//model.addAttribute("recruiting", recruit.selectTop4());
		model.addAttribute("blogko", blog.selectBlogKoByHome());
		model.addAttribute("blogos", blog.selectBlogOsByHome());
		
		model.addAttribute("reviewKe", review.selectKe());
		model.addAttribute("reviewOz", review.selectOz());
		model.addAttribute("reviewKo", review.selectKo());
		model.addAttribute("reviewEa", review.selectEa());
		model.addAttribute("reviewEu", review.selectEu());
		model.addAttribute("reviewAs", review.selectAs());

		model.addAttribute("announce", announce.selectNew());
		model.addAttribute("moment", blog.selectMomentByHome() );
		
		model.addAttribute("professor", professor.selectByWebHome());
		
		return "m";
	}
	
	@RequestMapping(value="/landing.do")
	String landing (HttpServletRequest request, HttpSession session, HttpServletResponse response, Model model) throws Exception {
		if (session.getAttribute("wwwcrewfactorycom_lading_session") == null) {
			session.setAttribute("wwwcrewfactorycom_lading_session", request.getRemoteAddr());;
		}
		model.addAttribute("reviewBest", review.selectBest());
		model.addAttribute("professor", professor.selectByWebHome());
		return "landing";
	}
	
	@RequestMapping(value="/landingm.do")
	String landingm (HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		model.addAttribute("reviewBest", review.selectBest());
		model.addAttribute("professor", professor.selectByWebHome());
		return "landingm";
	}
	
	@RequestMapping(value="/manager/index.do")
	String admin (HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		String url = "";		
		String opt = request.getParameter("opt");
		String searchDay = request.getParameter("searchDay");
		String searchMonth = request.getParameter("searchMonth");
		
		if(StringUtils.isNotEmpty(searchDay)) {
			
		} else {
			SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ("yyyyMMdd", Locale.KOREA );
			Date currentTime = new Date ();
			searchDay = mSimpleDateFormat.format (currentTime);
		}
		
		
		Map <String, Object> searchMap = new HashMap <String, Object>();
		searchMap.put("searchDay", searchDay);
		searchMap.put("searchMonth", searchMonth);
		
		if(request.getSession().getAttribute("ManagerInfo") != null) {

			if("thismonth".equals(opt)) {
				logger.info("searchday ==================" + searchMonth);
				model.addAttribute("overview", vanalyzer.ov_count_monthly(searchMap));
			}else {
				logger.info("searchday ==================" + searchDay);
				model.addAttribute("overview", vanalyzer.ov_count(searchMap));
			}
			
			model.addAttribute("total", vanalyzer.totalCount(searchMap));
			model.addAttribute("recent", vanalyzer.selectRecent(searchMap));

			url = "/admin/index";
		} else {
			url = "/admin/login";
		}
				
		return url;
	}
	
	
	@RequestMapping(value="/manager/login.do", method=RequestMethod.POST)
	String login (HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		String team = "cabin";
		AuthDomain domain = new AuthDomain();
		domain.setUserid(request.getParameter("userid"));
		domain.setUserpw(request.getParameter("userpw"));
		domain.setTeam(team);
		HttpSession session = request.getSession();
		session.setAttribute("ManagerInfo", auth.login(domain));
		session.setAttribute("ManagerList", auth.selectTeam(domain));

		logger.info(String.format("login : %s", domain.getUserid()));
		
		if(session.getAttribute("ManagerInfo") == null) {
			model.addAttribute("msg", "false");
		} else {
			model.addAttribute("msg", "true");
			auth.updateRecDate(domain);
		}		
		return "admin/login";
	}
	
	@RequestMapping(value="/manager/logout.do")
	String logout (HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {

		HttpSession session = request.getSession();
		session.setAttribute("ManagerInfo", null);

		logger.info("logout =================== " + session.toString() );
				
		return "admin/login";
	}
	
	@RequestMapping(value="/manager/ok.do", method=RequestMethod.GET)
	String result (@RequestParam(value="msg") String message,
					@RequestParam(value="reurl") String reurl,
					@RequestParam(value="home") String home,
					@RequestParam(value="section") String section,
					Model model) {
		MessageDomain domain = new MessageDomain();
		domain.setMsg(message);
		domain.setReurl(reurl);
		domain.setHome(home);
		domain.setSection(section);
		model.addAttribute("result", domain);		
		
		return "admin/Message";
	}
}

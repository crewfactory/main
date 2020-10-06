package com.crewfactory.main.controller;

import javax.servlet.http.HttpServletRequest;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.crewfactory.main.domain.BlogDomain;
import com.crewfactory.main.domain.FileManagerDomain;
import com.crewfactory.main.domain.SearchDomain;
import com.crewfactory.main.service.BlogService;
import com.crewfactory.main.service.FileManagerService;

@Controller
public class AdminMomentController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminMomentController.class);
	
	@Value("${file.upload-dir}")
	String realpath;
	
	@Value("${file.download.url}")
	String contextpath;
	
	@Autowired
	FileManagerService fs;
	
	@Autowired
	BlogService service;
	FileManagerService fm_service;
	
	@RequestMapping(value="/manager/blog/Moment.do", method=RequestMethod.GET)
	public String init(@RequestParam("section") String section, Model model) throws Exception {
		logger.info("section =========================== "+section);
		SearchDomain sdomain = new SearchDomain();
		sdomain.setSearchSection(section);
		model.addAttribute("result", service.select(sdomain));
		return "/admin/blog/MomentList";
	}
	
	@RequestMapping(value="/manager/blog/MomentWrite.do", method=RequestMethod.GET)
	public String write(Model model) throws Exception {
		return "/admin/blog/MomentWrite";
	}
	

	@RequestMapping("/manager/blog/MomentInsert.do") 
	public String insert(HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf, Model model) throws Exception {
			String section = request.getParameter("section");
			String openyn = request.getParameter("openyn");
			String topblog = request.getParameter("topblog");			
			String description = request.getParameter("description");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String taglib = request.getParameter("taglib");
			String regid = request.getParameter("regid");
			String regip = request.getParameter("regip");
			String reurl = request.getParameter("reurl");
			String code = request.getParameter("code");
		try {

			BlogDomain domain = new BlogDomain();
		    domain.setSection(section);
		    domain.setOpenyn(openyn);
		    domain.setTopblog(topblog);
		    domain.setDescription(description);
		    if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
		    	FileManagerDomain fd = fs.upload(mpf, "blog", realpath);
		    	String thumbnail = contextpath + fd.getPath();
		    	domain.setThumbnail(thumbnail);
		    }else {
		    	domain.setThumbnail("");
		    } 
		    domain.setTitle(title);
		    domain.setContent(content);
		    domain.setTaglib(taglib.replaceAll(" ", ""));
		    domain.setRegid(regid);
		    domain.setRegip(regip);
		    domain.setCode(code);
		    logger.info("Thumbnail ==============" + domain.getThumbnail());
		    service.insert(domain);
		    
		} catch(Exception e) {
			logger.error("Failed to upload ", e);
		} 
		
		return "redirect:/manager/ok.do?home=&reurl="+reurl+"&section="+section+"&msg=succeed";
	}
	
	@RequestMapping(value="/manager/blog/MomentView.do", method=RequestMethod.GET)
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx) );
		return "/admin/blog/MomentView";
	}
	
	@RequestMapping("/manager/blog/MomentUpdate.do")
	public String update(HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf, Model model) throws Exception {
			String idx = request.getParameter("idx");
			String section = request.getParameter("section");
			String openyn = request.getParameter("openyn");
			String topblog = request.getParameter("topblog");			
			String description = request.getParameter("description");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String taglib = request.getParameter("taglib");
			String regid = request.getParameter("regid");
			String regip = request.getParameter("regip");
			String reurl = request.getParameter("reurl");
			String code = request.getParameter("code");
			String visit = request.getParameter("visit");
			String thumb = request.getParameter("thumb");
			
		try {
			
			BlogDomain domain = new BlogDomain();
			
			if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
				FileManagerDomain fd = fs.upload(mpf, "blog", realpath);
		    	String thumbnail = contextpath + fd.getPath();
		    	domain.setThumbnail(thumbnail);
		    }else {
		    	domain.setThumbnail(thumb);
		    }
			
		    domain.setIdx( Integer.parseInt(idx));
			domain.setSection(section);
		    domain.setOpenyn(openyn);
		    domain.setTopblog(topblog);
		    domain.setDescription(description);
		    domain.setTitle(title);
		    domain.setContent(content);
		    domain.setTaglib(taglib.replaceAll(" ", ""));
		    domain.setRegid(regid);
		    domain.setRegip(regip);
		    domain.setVisit(Integer.parseInt(visit));
		    domain.setCode(code);
		    service.update(domain);
		    
		} catch(Exception e) {
			logger.error("Failed to upload ", e);
		} 
		
		return "redirect:/manager/ok.do?home=&reurl="+reurl+"&section="+section+"&msg=succeed";
	}
	
	@RequestMapping(value="/manager/blog/MomentDelete.do", method=RequestMethod.GET)
	public String delete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/blog/Moment.do";
	}

}

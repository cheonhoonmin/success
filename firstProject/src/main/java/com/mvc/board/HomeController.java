package com.mvc.board;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mvc.board.Biz.BoardBiz;
import com.mvc.board.Biz.BoardBizImpl;
import com.mvc.board.Dto.BoardDto;


@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private BoardBizImpl biz;
	
	@RequestMapping("/list.do")
	public String main(Model model) {
		logger.info("MAIN PAGE");
		model.addAttribute("list",biz.selectList());
		System.out.println("!!!!!!HYENEE!!!!");
		return "main";
	}
	
}

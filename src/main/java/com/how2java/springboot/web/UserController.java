package com.how2java.springboot.web;

import java.text.DateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.how2java.springboot.dao.DAO;
import com.how2java.springboot.dao.UserDAO;
import com.how2java.springboot.pojo.Category;
import com.how2java.springboot.pojo.User;

@Controller
public class UserController {
   public static int time=0;
	public DAO dao = new DAO();
	
	public User user = new User();
	@Autowired UserDAO userDAO;

	
	@RequestMapping("/login")
    public String login(String name,String password,HttpSession session) throws Exception {
    	//m.addAllAttributes("now", DateFormat.getDateTimeInstance().format(new Date()));
    	if(null!=dao.getUser(name, password)) {
    		time++;
    		session.setAttribute("name", name);
    		session.setAttribute("time", time);
    		return "redirect:listCategory";
    	}
    	else return  "login";
    }
}

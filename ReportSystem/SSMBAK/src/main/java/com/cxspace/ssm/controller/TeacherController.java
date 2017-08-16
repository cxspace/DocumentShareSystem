package com.cxspace.ssm.controller;

import com.cxspace.ssm.service.TeacherService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by liujie on 2017/8/8.
 */

@Controller

@RequestMapping("/teacher")

public class TeacherController {

    @Resource
    private TeacherService teacherService;

    @RequestMapping("/login")

    public String doLogin(HttpServletRequest request, HttpSession session){

        System.out.println(request.getParameter("name")+"==="+request.getParameter("password"));

        String name = request.getParameter("name");

        String password = request.getParameter("password");

        if (teacherService.login(name,password).size() > 0)
        {
            session.setAttribute("USER",teacherService.login(name,password).get(0));

        }else {

            session.setAttribute("ErrorMsg","用户名或密码错误!!!");

            return "forward:/main/login.do";
        }

        return "redirect:/main/doc_list.do";
    }

}

package com.cxspace.ssm.controller;

import com.cxspace.ssm.model.Document;
import com.cxspace.ssm.model.Page;
import com.cxspace.ssm.model.Teacher;
import com.cxspace.ssm.service.DocumentService;
import com.cxspace.ssm.service.TeacherService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by liujie on 2017/8/5.
 */


@Controller

@RequestMapping("/main")
public class MainController {


    @Resource
    private DocumentService documentService;

    @Resource
    private TeacherService teacherService;

    @RequestMapping("/login")

    public String mainFrame(HttpSession session){

        return "login";
    }

    @RequestMapping("/change_password")
    public String change_password(){
        return "change_password";
    }


    @RequestMapping("/do_change_password")
    public String do_change_password(HttpServletRequest request,HttpSession session){

        Teacher teacher = (Teacher) session.getAttribute("USER");

        String password = request.getParameter("password");

        String confirmPassword = request.getParameter("ConfirmPassword");

        if (password.equals(confirmPassword)) {

            teacherService.updateTeacherPasswordById(confirmPassword,teacher.getId());

            session.setAttribute("ErrorMsg","");

            return "login";

        }else {
            session.setAttribute("Msg", "两次输入密码不一致!请重新输入。");
            return "change_password";
        }

    }


    @RequestMapping("loginOut")
    public String logout(HttpSession session){

        session.removeAttribute("USER");

        return "redirect:/main/doc_list.do";
    }

    @RequestMapping(value = "/add_document")
    public String add_document(){

        return "add_document";
    }

    @RequestMapping(value = "/doc_list")
    public String doc_list(Model model, HttpServletRequest request){


        Page<Document> page = new Page<Document>();

        String pageNo = request.getParameter("pageNo");

        System.out.println(pageNo);

        if (null == pageNo){
            pageNo = "1";
        }

        int pageIndex = Integer.parseInt(pageNo);

        if (pageIndex <= 1){
            pageIndex = 1;
        }

        page.setPage(pageIndex);

        page.setRows(10);

        documentService.selectPageList(page);

        model.addAttribute("pageResult",page);

        return "doc_list";
    }

    @RequestMapping(value = "/doc_detail")
    public String doc_detail(Model model,String doc_id){

        int id = Integer.parseInt(doc_id);

        Document document = documentService.findDocById(id);

        System.out.println(document.getContent());

        model.addAttribute("document",document);

        return "doc_detail";
    }



}

package com.cxspace.ssm.controller;

import com.cxspace.ssm.model.Comment;
import com.cxspace.ssm.model.Teacher;
import com.cxspace.ssm.service.CommentService;
import com.cxspace.ssm.utils.DateTimeHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * Created by liujie on 2017/8/9.
 */

@Controller

@RequestMapping("/comment")

public class CommentController {

    @Resource
    private CommentService commentService;

    @RequestMapping("/save")

    public String save(Comment comment, String doc_id, HttpSession session){

        comment.setCreate_time(DateTimeHelper.getCurrentTime());

        comment.setUsername(((Teacher)session.getAttribute("USER")).getName());

        int id = Integer.parseInt(doc_id);

        commentService.save(comment,id);

        return "redirect:/main/doc_detail.do?doc_id="+doc_id;
    }

}

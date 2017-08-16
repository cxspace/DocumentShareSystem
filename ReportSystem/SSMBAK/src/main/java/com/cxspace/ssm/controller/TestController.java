package com.cxspace.ssm.controller;

import com.cxspace.ssm.dao.CommentDao;
import com.cxspace.ssm.dao.DocumentDao;
import com.cxspace.ssm.dao.TeacherDao;
import com.cxspace.ssm.model.Comment;
import com.cxspace.ssm.model.Document;
import com.cxspace.ssm.utils.DateTimeHelper;
import com.sun.org.apache.xerces.internal.xinclude.XIncludeTextReader;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.File;
import java.io.FileOutputStream;

/**
 * Created by liujie on 2017/8/8.
 */

@Controller
@RequestMapping("/test")

public class TestController {

    @Resource
    private DocumentDao documentDao;

    @Resource
    private CommentDao commentDao;


    @Resource
    private TeacherDao teacherDao;

     @RequestMapping("/save_doc")
     public String save_doc()
     {
         Document document = new Document();

         document.setTitle("测试文档1");

         document.setContent("测试文档内容1");

         document.setCreate_time(DateTimeHelper.getCurrentTime());

         document.setStu_name("小王1");

         document.setStu_id("1234561");

         documentDao.save(document);

         return "login";
     }

     @RequestMapping("/save_comment")
     public String save_comment(){

         Comment comment = new Comment();

         comment.setContent("评论2");

         comment.setUsername("dsddsdd");

         comment.setCreate_time(DateTimeHelper.getCurrentTime());

         commentDao.save(comment,1);

         return "login";
     }


     @RequestMapping("/findAllDoc")
    public String fillAllDoc(){

         System.out.println(documentDao.fillAllDoc());

         return "login";
     }

     @RequestMapping("/findDocById")
    public String findDocById(){

         System.out.println(documentDao.findDocById(1));

         System.out.println(commentDao.findCommentsByDocId(1));

        return "login";
     }

     @RequestMapping("/deleteDoc")
    public String deleteDocById(){

         commentDao.deleteAllCommentsByDocId(1);

         documentDao.deleteDocById(1);

        return "login";
     }

     @RequestMapping("/login")

     public String login(){

        System.out.println(teacherDao.findTeacherByNameAndPass("zi chengxu","work@good608"));

        return "login";
     }

     @RequestMapping("/pdf")

    public String pdf(){

         Document document = new Document();

         document =  documentDao.findDocById(9);

         FileOutputStream os = null;

         try {
             File file = new File("/Users/liujie/Desktop/ReportSystem/SSMBAK/pdf-demo");

             if (!file.exists()){
                 file.createNewFile();
             }

             os = new FileOutputStream(file);


         }catch (Exception e){
             e.printStackTrace();
         }




         return "login";
     }

}

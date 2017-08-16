package com.cxspace.ssm.controller;

import com.cxspace.ssm.model.Document;
import com.cxspace.ssm.service.DocumentService;
import com.cxspace.ssm.utils.DateTimeHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * Created by liujie on 2017/8/9.
 */

@Controller
@RequestMapping("/document")

public class DocumentController {


    @Resource
    private DocumentService documentService;

    @RequestMapping("/save")
    public String save(Document document){

        document.setCreate_time(DateTimeHelper.getCurrentTime());

        System.out.println(document);

        documentService.save(document);

        return "redirect:/main/doc_list.do";
    }

    @RequestMapping("/delete")

    public String delete(String doc_id){

        int id = Integer.parseInt(doc_id);

        documentService.deleteDocById(id);

        return "redirect:/main/doc_list.do";

    }



}

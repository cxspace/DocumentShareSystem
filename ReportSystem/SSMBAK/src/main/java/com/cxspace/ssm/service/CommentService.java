package com.cxspace.ssm.service;

import com.cxspace.ssm.model.Comment;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by liujie on 2017/8/9.
 */

public interface CommentService {

    /**
     *
     * @param comment  评论内容
     * @param doc_id   文档id
     *
     *     插入一条评论
     *
     * @return
     */

    public int save(@Param("comment") Comment comment , @Param("docId") Integer doc_id);


}

package com.cxspace.ssm.service.impl;

import com.cxspace.ssm.dao.CommentDao;
import com.cxspace.ssm.model.Comment;
import com.cxspace.ssm.service.CommentService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by liujie on 2017/8/9.
 */

@Service("commentServiceImpl")

public class CommentServiceImpl implements CommentService{

    @Resource
    private CommentDao commentDao;

    public int save(@Param("comment") Comment comment, @Param("docId") Integer doc_id) {
        return commentDao.save(comment,doc_id);
    }
}

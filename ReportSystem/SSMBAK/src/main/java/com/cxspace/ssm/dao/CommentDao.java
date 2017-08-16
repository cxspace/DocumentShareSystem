package com.cxspace.ssm.dao;

import com.cxspace.ssm.model.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by liujie on 2017/8/8.
 */
public interface CommentDao {

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


    /**
     *
     * 根据文档id查询所有属于改文档的评论
     *
     * @param doc_id
     * @return
     */

    public List<Comment> findCommentsByDocId(Integer doc_id);


    /**
     * 根据文档id删除其相关评论
     * @param doc_id
     *
     */
    public void deleteAllCommentsByDocId(Integer doc_id);

}

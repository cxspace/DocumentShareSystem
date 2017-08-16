package com.cxspace.ssm.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by liujie on 2017/8/8.
 */
public class Document implements Serializable {

    private Integer id;

    private String title;

    private String content;

    private String create_time;

    private String stu_name;

    private String stu_id;

    private List<Comment> commentList = new ArrayList<Comment>();

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    public String getStu_name() {
        return stu_name;
    }

    public void setStu_name(String stu_name) {
        this.stu_name = stu_name;
    }

    public String getStu_id() {
        return stu_id;
    }

    public void setStu_id(String stu_id) {
        this.stu_id = stu_id;
    }

    public List<Comment> getCommentList() {
        return commentList;
    }

    public void setCommentList(List<Comment> commentList) {
        this.commentList = commentList;
    }

    public Document(Integer id, String title, String content, String create_time, String stu_name, String stu_id, List<Comment> commentList) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.create_time = create_time;
        this.stu_name = stu_name;
        this.stu_id = stu_id;
        this.commentList = commentList;
    }

    public Document() {
    }

    @Override
    public String toString() {
        return "Document{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", create_time='" + create_time + '\'' +
                ", stu_name='" + stu_name + '\'' +
                ", stu_id='" + stu_id + '\'' +
                ", commentList=" + commentList +
                '}';
    }

}

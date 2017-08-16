package com.cxspace.ssm.model;


/**
 * Created by liujie on 2017/8/8.
 */
public class Comment {

    private Integer id;

    private Integer doc_id;

    private String content;

    private String username;

    private String create_time;

    private Document document;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getDoc_id() {
        return doc_id;
    }

    public void setDoc_id(Integer doc_id) {
        this.doc_id = doc_id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }



    public Document getDocument() {
        return document;
    }

    public void setDocument(Document document) {
        this.document = document;
    }

    public Comment() {
    }

    public Comment(Integer id, Integer doc_id, String content, String username, String create_time, Document document) {
        this.id = id;
        this.doc_id = doc_id;
        this.content = content;
        this.username = username;
        this.create_time = create_time;
        this.document = document;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", doc_id=" + doc_id +
                ", content='" + content + '\'' +
                ", username='" + username + '\'' +
                ", create_time='" + create_time + '\'' +
                ", document=" + document +
                '}';
    }
}

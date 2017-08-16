package com.cxspace.ssm.service;

import com.cxspace.ssm.model.Document;
import com.cxspace.ssm.model.Page;

import java.util.List;

/**
 * Created by liujie on 2017/8/9.
 */
public interface DocumentService {

    public int save(Document document);

    /**
     * 查询并返回所有文档
     * @return
     *
     */
    public List<Document> fillAllDoc();


    /**
     * 通过文档id查询文档详细内容
     * @param doc_id
     * @return
     *
     */

    public Document findDocById(Integer doc_id);

        /*
       通过文档Id删除改文档
     */

    public void deleteDocById(Integer doc_id);

    /**
     * 分页查询数据
     *
     * @param page
     * @return
     */

    public Page<Document> selectPageList(Page<Document> page);



}

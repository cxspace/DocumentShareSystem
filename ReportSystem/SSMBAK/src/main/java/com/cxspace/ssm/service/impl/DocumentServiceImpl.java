package com.cxspace.ssm.service.impl;

import com.cxspace.ssm.dao.CommentDao;
import com.cxspace.ssm.dao.DocumentDao;
import com.cxspace.ssm.model.Document;
import com.cxspace.ssm.model.Page;
import com.cxspace.ssm.service.DocumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by liujie on 2017/8/9.
 */

@Service("documentServiceImpl")
public class DocumentServiceImpl implements DocumentService {

    @Autowired
    private DocumentDao documentDao;

    @Autowired
    private CommentDao commentDao;

    public int save(Document document) {
        return documentDao.save(document);
    }

    public List<Document> fillAllDoc() {
        return documentDao.fillAllDoc();
    }

    public Document findDocById(Integer doc_id) {

        Document document = documentDao.findDocById(doc_id);

        document.setCommentList(commentDao.findCommentsByDocId(doc_id));

        return document;
    }

    public void deleteDocById(Integer doc_id) {

        commentDao.deleteAllCommentsByDocId(doc_id);
        documentDao.deleteDocById(doc_id);
    }



    public Page<Document> selectPageList(Page<Document> page) {

        page.setList(documentDao.selectPageList(page));

        int totalRecord = documentDao.selectPageCount(page);

        page.setTotalRecord(totalRecord);

        if (totalRecord % page.getRows() == 0){
            page.setTotalPage(totalRecord/page.getRows());
        }else {
            page.setTotalPage(totalRecord/page.getRows() + 1);
        }

        return page;
    }
}

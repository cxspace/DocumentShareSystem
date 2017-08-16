package com.cxspace.ssm.service.impl;

import com.cxspace.ssm.dao.TeacherDao;
import com.cxspace.ssm.model.Teacher;
import com.cxspace.ssm.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by liujie on 2017/8/8.
 */

@Service("teacherServiceImpl")
public class TeacherServiceImpl implements TeacherService{

    @Autowired
    private TeacherDao teacherDao;

    public List<Teacher> login(String name, String password) {
        return teacherDao.findTeacherByNameAndPass(name,password);
    }

    public Integer updateTeacherPasswordById(String password, Integer id) {
        return teacherDao.updateTeacherPasswordById(password, id);
    }
}

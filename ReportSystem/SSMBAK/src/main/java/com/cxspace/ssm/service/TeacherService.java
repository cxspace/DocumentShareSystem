package com.cxspace.ssm.service;

import com.cxspace.ssm.model.Teacher;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by liujie on 2017/8/8.
 */

public interface TeacherService {

    public List<Teacher> login(String name,String password);

    public Integer updateTeacherPasswordById(String password , Integer id);

}

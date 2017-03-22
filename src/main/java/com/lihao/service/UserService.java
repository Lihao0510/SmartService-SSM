package com.lihao.service;

import com.lihao.dao.UserDao;
import com.lihao.entity.SysUser;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by lihao on 2017/3/5.
 */

@Service
public class UserService {

    static Logger logger = Logger.getLogger(UserService.class.getName());

    @Autowired
    private UserDao userDao;

    public List<SysUser> getAllSysUser(){
        logger.info("请求了UserService");
        return userDao.select();
    }


}

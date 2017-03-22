package com.lihao.controller;

import com.lihao.entity.SysUser;
import com.lihao.service.UserService;
import com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by lihao on 2017/3/5.
 */

@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    private UserService userService;


    @RequestMapping("/alluser")
    @ResponseBody
    public List<SysUser> getAllSysUser(){

        List<SysUser> userList  = userService.getAllSysUser();
        return userList;
    }

    @RequestMapping("/")
    public void testServlet(){

    }
}

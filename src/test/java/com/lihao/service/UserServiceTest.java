package com.lihao.service;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

/**
 * Created by lihao on 2017/3/23.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:/spring/spring-dao.xml" })
public class UserServiceTest {

    @Autowired
    UserService service;

    @Before
    public void init(){
        System.out.println("测试开始");
    }

    @Test
    public void testService(){
        assertNotNull(service);
    }

}
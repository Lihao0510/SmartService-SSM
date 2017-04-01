package com.lihao.aop;

import org.apache.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * Created by lihao on 2017/3/23.
 */
@Aspect
@Component
public class ControllerCut {

    Logger logger = Logger.getLogger(this.getClass());

    @Pointcut("execution(* com.lihao.controller.*.*(..))")
    void anyMethod(){}

    @Before("anyMethod()")//声明前置通知
    public void doBefore() {
        logger.info("Controller开始运行");
    }


}

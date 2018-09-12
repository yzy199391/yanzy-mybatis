package com.yanzy.listener;

import com.yanzy.utils.SqlSessionFactoryUtil;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * @author yanzy
 * @date 2018/9/11 上午10:13
 * @description
 */
@WebListener
public class InitSqlSessionListener implements ServletContextListener {
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        System.out.println("容器启动...");
        //初始化SqlSessionFactory对象
        SqlSessionFactoryUtil.initSqlSessionFactory();
    }

    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        System.out.println("容器销毁...");
        //关闭sqlSession对象
        SqlSessionFactoryUtil.closeSqlSession();
    }
}

package com.yanzy.utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

/**
 * @author yanzy
 * @date 2018/9/11 上午9:51
 * @description SqlSessionFactory操作工具类
 */
public class SqlSessionFactoryUtil {
    private static String RESOURCE_PATH = "mybatis-config.xml";
    private static SqlSessionFactory sqlSessionFactory;
    private static ThreadLocal<SqlSession> threadLocal = new ThreadLocal<SqlSession>();

    /**
     * 创建sqlSessionFactory
     */
    public static void initSqlSessionFactory(){
        try {
            InputStream is = Resources.getResourceAsStream(RESOURCE_PATH);
            sqlSessionFactory=new SqlSessionFactoryBuilder().build(is);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 获取sqlSessionFactory
     * @return
     */
    public static SqlSessionFactory getSqlSessionFactory(){
        return sqlSessionFactory;
    }

    /**
     * 关闭sqlSession
     */
    public static void closeSqlSession(){
        SqlSession sqlSession = threadLocal.get();
        if(sqlSession != null){
            sqlSession.close();
            threadLocal.set(null);
        }
    }
}


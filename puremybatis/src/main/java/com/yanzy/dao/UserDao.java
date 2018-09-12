package com.yanzy.dao;

import com.yanzy.entity.Users;
import com.yanzy.utils.SqlSessionFactoryUtil;
import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.apache.log4j.spi.LoggerFactory;

import java.util.List;

/**
 * @author yanzy
 * @date 2018/9/11 上午10:33
 * @description 用户数据操作类
 */
public class UserDao {
    Logger log = Logger.getLogger(UserDao.class);

    SqlSession sqlSession;
    List<Users> usersList;

    //防止仅在创建UserDao时开启session可能出现的问题：
    // 在第一次使用userDao中方法后，session关闭，后面在未新建UserDao的情况下使用其中方法，出现Excutor已关闭的错误
    private SqlSession getSession(){
        sqlSession = SqlSessionFactoryUtil.getSqlSessionFactory().openSession();
        return sqlSession;
    }

    /**
     * 查询所有用户
     *
     * @return
     */
    public List<Users> findUsers(Integer id) {
        try {
            //参数为mapper映射文件中的配置id,此处参数用Users构造方法包装，
            // 防止出现There is no getter for property named 'id' in 'class java.lang.Integer'错误
            usersList = getSession().selectList("findUsers", new Users(id));
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            sqlSession.close();
        }
        return usersList;
    }

    public int addUsers(Users user){
        try {
            //返回值是insert过程中影响的行数
            getSession().insert("addUsers", user);
            sqlSession.commit();
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
            log.error("------------->新增用户失败");
            return 0;
        } finally {
            sqlSession.close();
        }
    }
}

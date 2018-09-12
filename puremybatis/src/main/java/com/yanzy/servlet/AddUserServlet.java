package com.yanzy.servlet;

import com.yanzy.dao.UserDao;
import com.yanzy.entity.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

/**
 * @author yanzy
 * @date 2018/9/12 上午10:09
 * @description 新增用户后台服务
 */
@WebServlet("/add/user")
public class AddUserServlet extends HttpServlet {
    UserDao userDao = new UserDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取新增用户数据
        String username = req.getParameter("username");
        String nickname = req.getParameter("nickname");
        String userpass = req.getParameter("userpass");
        String age = req.getParameter("age");
        String gender = req.getParameter("gender");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");

        //根据用户数据创建用户对象
        Users user = new Users(username, nickname, userpass, Integer.parseInt(age), gender, phone, email, new Date(), new Date(), new Date(), 0);

        //将用户添加到数据库中
        userDao.addUsers(user);

        //重定向到查看详情页，查看刚才新增的用户
        resp.sendRedirect("/mybatis/detail?id=" + user.getId());
    }
}

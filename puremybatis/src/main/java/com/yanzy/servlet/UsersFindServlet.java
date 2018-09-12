package com.yanzy.servlet;

import com.yanzy.dao.UserDao;
import com.yanzy.entity.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author yanzy
 * @date 2018/9/11 上午10:47
 * @description
 */
@WebServlet("/index")
public class UsersFindServlet extends HttpServlet {
    UserDao userDao = new UserDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       List<Users> usersList =  userDao.findUsers(null);
       req.setAttribute("usersList", usersList);
       req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}

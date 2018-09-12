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
 * @date 2018/9/11 下午4:01
 * @description
 */
@WebServlet("/detail")
public class UsersFindByIdServlet extends HttpServlet {
    UserDao userDao = new UserDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        List<Users> usersList =  userDao.findUsers(Integer.parseInt(id));
        Users user;
        if(usersList != null && usersList.size() > 0 ){
            user = usersList.get(0);
            req.setAttribute("userDetail", user);
        }
        req.getRequestDispatcher("detail.jsp").forward(req, resp);
    }
}

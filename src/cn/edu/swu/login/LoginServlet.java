package cn.edu.swu.login;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import cn.edu.swu.domain.User;
import cn.edu.swu.utils.JdbcUtil;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		System.out.println("username="+name+" pwd="+pwd);
		QueryRunner qr = new QueryRunner(JdbcUtil.getDataSource());
		String sql = "select * from user where name=? and pwd=?";
		User user = null;
		try {
		  user = qr.query(sql,new BeanHandler<User>(User.class),name,pwd);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(user != null) {
			request.getRequestDispatcher("login_success.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("login_failure.jsp").forward(request, response);
		}
		
		
	}

}

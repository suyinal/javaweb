package cn.edu.swu;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String u = request.getParameter("user"); 
		String p=request.getParameter("pass");
		
		 Connection connection=null;
		 PreparedStatement ps=null;
		 ResultSet rs=null;
		 String sql="select cout(id) from user where user=? and pwd=? ";
		try {
			connection=JdbcTools.getConnection();
			ps=connection.prepareStatement(sql);
			ps.setString(1, u);
			ps.setString(1, p);
			rs=ps.executeQuery();
			while (rs.next()) {
				int cout=rs.getInt(1);
				if(cout!=0) {
					request.getRequestDispatcher("login_success.jsp").forward(request, response);
				}else {
					request.getRequestDispatcher("login_failure.jsp").forward(request, response);
				}
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}finally {
			JdbcTools.release(rs, ps, connection);
		}
		 
	}

	

}


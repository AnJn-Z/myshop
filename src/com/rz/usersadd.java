package com.rz;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class usersadd
 */
@WebServlet("/usersadd")
public class usersadd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public usersadd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1、先接受前端传递过来的参数
		request.setCharacterEncoding("utf-8");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String truename=request.getParameter("truename");
		String tel=request.getParameter("tel");		
		String memo=request.getParameter("memo");
		
		
		//2、把接受到的参数添加到数据库
		
		//定义sql语句
		String strSql=" insert into tbusers (username,password,truename,tel,memo) values (?,?,?,?,?)";
		//定义参数对象
		List<Object> params = new ArrayList<Object>();
		params.add(username);
		params.add(password);
		params.add(truename);	
		params.add(tel);
		params.add(memo);
			
		DBHelper Dal=new DBHelper();		
		Dal.excuteSql(strSql, params);		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().write("<font color='green'>管理员创建成功！</font>");
		response.setHeader("Refresh", "3;URL="+request.getContextPath()+"/admin/usersadd.jsp");	
	}

}

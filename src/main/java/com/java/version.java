package com.java;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/version")

public class version extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final int ver_debug=2;
	public static final int ver_release=1;
	

	public static int verType=ver_debug;
//	public static int verType=ver_release;

	public static String Version="HCWebApp.2018.7.6.0021";	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=utf-8");  
		resp.setHeader("Cache-Control", "no-cache");
	    resp.getWriter().print(GetVersion());
	    System.out.println(Version);
	    resp.getWriter().flush();			
	}
	
	public String GetVersion()
	{
		return Version+"."+verType;
	}
}

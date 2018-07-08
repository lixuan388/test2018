package com.java.test.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecity.java.json.JSONArray;
import com.ecity.java.json.JSONObject;
import com.ecity.java.sql.table.MySQLTable;



@WebServlet("/testServlet.json")

public class testServlet  extends HttpServlet {

		private static final long serialVersionUID = 1221671299145751538L;
		
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
			resp.setContentType("application/json;charset=utf-8"); 
			resp.setCharacterEncoding("UTF-8");  
			resp.setHeader("Cache-Control", "no-cache");

			
			JSONObject ReturnJson = new JSONObject();	
		
			JSONArray LineArrayJson = new JSONArray();
			
			
			MySQLTable LineTable=new MySQLTable("select top 20 * from aus_users where aus_status<>'D'");
			try
			{
				try {
					LineTable.Open();
					while (LineTable.next())
					{
						JSONObject LineInfoJson = new JSONObject();		
						LineInfoJson.put("aus_id", LineTable.getString("aus_id"));
						LineInfoJson.put("aus_username", LineTable.getString("aus_username"));
						LineInfoJson.put("aus_password", LineTable.getString("aus_password"));
						LineInfoJson.put("aus_status", LineTable.getString("aus_status"));
						LineArrayJson.put(LineInfoJson);
						
		//				System.out.println("ali_id:"+LineTable.getString("ali_id"));
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			finally
			{
	
				LineTable.Close();
			}
			ReturnJson.put("MsgID","1");
			ReturnJson.put("MsgTest","Succees！");
			ReturnJson.put("Data",LineArrayJson);
			
	        resp.getWriter().print(ReturnJson.toString());
	        resp.getWriter().flush();	
		}
	
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
			doGet(req,resp);
	
		}
}
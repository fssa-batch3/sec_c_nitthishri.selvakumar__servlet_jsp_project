package com.fssa;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddServlet extends HttpServlet{
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
		int i = Integer.parseInt(req.getParameter("one"));
		int j = Integer.parseInt(req.getParameter("two"));
		int k= i+j;
		PrintWriter out = res.getWriter();
		out.println("result"+ " "+k);	
		
	}
}
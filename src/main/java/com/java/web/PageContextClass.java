package com.java.web;

import java.io.IOException;

import javax.servlet.jsp.PageContext;

public class PageContextClass {

	PageContext page;
	public PageContextClass(PageContext page)
	{
		this.page=page;
	}
	
	public void print()
	{
		try {
			this.page.getOut().append("<div>1111</div>");
			this.page.getOut().append("<div>2222</div>");
			this.page.getOut().append("<div>3333</div>");
			this.page.getOut().append("<div>4444</div>");
			this.page.getOut().append("<div>5555</div>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

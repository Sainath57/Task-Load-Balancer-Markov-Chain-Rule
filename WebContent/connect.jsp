<title>Cloud</title><%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%
	Connection connection = null;
 	try {
     

	  	Class.forName("com.mysql.jdbc.Driver");	
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/VTJCC06_2022","root","root1234");
      	String sql="";

	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
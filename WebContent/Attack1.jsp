<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Download</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {color: #00FF00}
.style2 {color: #0000FF}
.style3 {color: #FF0000}
.style5 {color: #FF0000; font-weight: bold; }
.style7 {color: #FF0000; font-weight: bold; font-style: italic; }
.style8 {font-size: 18px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
   <h1><a href="index.html"><span class="style8">ProjectName</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li ><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="DataOwner.html"><span>Data Owner </span></a></li>
          <li><a href="CharonServer.html"><span>Central Server</span></a></li>
          <li><a href="CloudServer.html"><span>CloudServer</span></a></li>
          <li class="active"><a href="EndUser.html"><span>EndUser</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide2.jpg" width="960" height="313" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="313" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
        <form id="form1" method="post" action="Attack2.jsp">
              <label>
              <%	  
			  
			  
	String ss2="",ss3="",ss4="",ss5="",ss7="",decryptedValue="";
	int i=0;
	try 
	{
		String fname=request.getParameter("tt22");
		String query="Select * from charm_cloudserver where fname='"+fname+"'"; 
		Statement st=connection.createStatement();
		ResultSet rs=st.executeQuery(query);
		while ( rs.next() )
		{
			i=rs.getInt(1);
			ss2=rs.getString(2);
			ss7=rs.getString(3);
			
			
			
			
				String keys = "ef50a0ef2c3e3a5f";
				byte[] keyValue1 = keys.getBytes();
				Key key1 = new SecretKeySpec(keyValue1,"AES");
				Cipher c1 = Cipher.getInstance("AES");
				c1.init(Cipher.DECRYPT_MODE, key1);
				decryptedValue = new String(Base64.decode(ss7.getBytes()));
		}	
		
			%>
              <br />
              </label>
              </span>
              </label>
              <table width="568" border="0" align="center">
                <tr>
                  <td width="159" height="28"><div align="center" class="style25 style26">
                      <div align="left"><strong>File Name : </strong></div>
                  </div></td>
                  <td width="393"><input name="fname" type="text" size="48" value="<%=ss2%>" />                  </td>
                </tr>
                <tr>
                  <td height="28"><div align="center" class="style27">
                      <div align="left"><strong>Contents :</strong></div>
                  </div></td>
                  <td><label>
                    <textarea rows="10"  cols="50"  name="cont"><%=decryptedValue%></textarea>
                    </label>                  </td>
                </tr>
              </table>
              <span class="style10">
              <label for="name"><br />
              </label>
              </span>
              <label></label>
              <label>
              <div align="center"><br />
                  <br />
                  <br />
                  <input type="submit" name="Submit" value="Attack Content" />
              </div>
              </label>
              <%  
			
			connection.close();
	}
	
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
	
	%>
            </form>

          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf"></p>
      <p class="rf"></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div></body>
</html>

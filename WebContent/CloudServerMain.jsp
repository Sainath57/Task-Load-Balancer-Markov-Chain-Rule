<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloud Server Main</title>
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
.style3 {font-size: 16px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
   <h2><a href="index.html">A Dynamic Task Load Balancing Scheme for Miscellaneous Clouds<small></small></a></h2>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li ><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="DataOwner.html"><span>Data Owner </span></a></li>
          <li><a href="CharonServer.html"><span>Central Server</span></a></li>
          <li class="active"><a href="CloudServer.html"><span>CloudServer</span></a></li>
          <li><a href="EndUser.html"><span>EndUser</span></a></li>
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
        <%
String name = null;
	String a = (String) application.getAttribute("cloudName");


	String s = a, usr2 = "";


	//Rackspace
//Amazon S3
//Windows Azure
//Aliyun OSS
	
	if (!(a.equalsIgnoreCase("Amazon S3") || a.equalsIgnoreCase("Windows Azure") || a
			.equalsIgnoreCase("Aliyun OSS"))) {
		usr2 = a;

		application.setAttribute("ocn", usr2);
%>

<h2>Welcome To <%=usr2%> Cloud Server Control Panel</h2>

<%
	}

	if (!(a.equalsIgnoreCase("Rackspace") || a.equalsIgnoreCase("Windows Azure") || a
			.equalsIgnoreCase("Aliyun OSS"))) {

		
		String b=(String)application.getAttribute("cnames2");
		usr2 = b;
		application.setAttribute("ocn", usr2);
		%>

		<h2>Welcome To <%=usr2%> Control Panel</h2>

		<%
	}
	if (!(a.equalsIgnoreCase("Rackspace") || a.equalsIgnoreCase("Amazon S3") || a
			.equalsIgnoreCase("Aliyun OSS"))) {

		
		String c=(String)application.getAttribute("cnames3");
		usr2 = c;
		application.setAttribute("ocn", usr2);
		%>

		<h2>Welcome To <%=usr2%> Control Panel</h2>

		<%
	}
	if (!(a.equalsIgnoreCase("Rackspace") || a.equalsIgnoreCase("Amazon S3") || a
			.equalsIgnoreCase("Windows Azure"))) {

		
		String d=(String)application.getAttribute("cnames4");
		usr2 = d;
		application.setAttribute("ocn", usr2);
		%>

		<h2>Welcome To <%=usr2%> Control Panel</h2>

		<p>
		  <%
	}
%>
		</p>
		<p><img src="images/gal3.jpg" width="616" height="288" /></p>
		<div></div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform"></div>
        <div class="clr"></div>
        <div class="gadget">
           <h2 class="star"><span>Cloud Menu</span></h2>
           <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="GetThreshold.jsp">View Threshold</a></li>
            <li><a href="GetVMR.jsp">View VM Resources</a></li>
            
			 <li><a href="ViewUsers.jsp">View All Users</a></li>
            <li><a href="ViewDataOwners.jsp">View DataOwners</a></li>
            <li><a href="ViewCloudFiles.jsp">View All Files</a></li>
  			<li><a href="MemoryUtil.jsp">View Memory Utillization</a></li>
  			<li><a href="ViewAttackers.jsp">View All Attackers</a></li>
  			<li><a href="UnblockUser.jsp">View and UnRevoke Vendor</a></li>
            <li><a href="index.html">Log Out</a></li>
          </ul>
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

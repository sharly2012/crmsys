<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Motion Global CRM System</title>

<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="description" content="Your website description goes here" />
<meta name="keywords" content="your,keywords,goes,here" />
<link rel="stylesheet" id="styles"
	href="<%=path%>/css/andreas08(blue).css" type="text/css"
	media="screen,projection" />
<script type="text/javascript" src="<%=path%>/js/acesys.js"></script>
</head>
<body>
	<div id="container">
		<div id="header"></div>
		<div id="navigation">
			<ul>
				<li class="selected"></li>
				<li><a href="<%=path%>/index.jsp">Home</a></li>
				<li><a href="<%=path%>/product/itservice.jsp">IT Service</a></li>
				<li><a href="<%=path%>/product/products.jsp">E-Commerce</a></li>
				<li><a href="<%=path%>/product/employee.jsp">Join Us</a></li>
				<li><a href="<%=path%>/product/ContactUs.jsp">About Us</a></li>

			</ul>
			<br>
		</div>
		<div id="content">
			<h2>Welcome To Motion Global Inc.</h2>

			<div class="splitcontentleft">
				<div class="box">
					<h3>
						<img src="images/lxrycyy.gif" alt="" width="184" height="124" />
					</h3>
				</div>
			</div>
			<div class="splitcontentright">
				<p>
					<strong>Good to join Smartbuyglasses!</strong>
				</p>
			</div>
		</div>

		<div id="subcontent">
			<form name="form" method="post"
				action="<%=request.getContextPath()%>/login?a=login">
				<div class="small box">
					<table width="150" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="30%" valign="middle"><img
								src="images\username.jpg" width="61" height="17" align="bottom" />
								<input name="username" id="username" type="text" size="7" /></td>
						</tr>
						<tr>
							<td valign="middle"><img src="images\password.jpg"
								width="61" height="17" /> <input name="password" id="password"
								type="password" size="6" /></td>
						</tr>
						<tr>
							<td height="30" valign="bottom"><input name="image"
								type="image" onclick="return checkLogin(form);"
								src="images\login_1_7.jpg" alt="login" width="44" height="17"
								border="0" /> &nbsp;&nbsp; <select name="sel"
								onchange="changeStyle(this)">
									<option value="andreas08(blue).css" selected="selected">Default
										Style</option>
									<option value="andreas08(orange).css">Orange</option>
									<option value="andreas08(green).css">Green</option>
							</select></td>
						</tr>
					</table>
				</div>
			</form>
			<h2>THE LATEST NEWS</h2>
			<ul class="menublock">
				<li><a href="#">11111111</a><a href="#"><img
						src="images/buy.gif" width="20" height="16" border="0" /></a></li>
				<li><a href="#">12121</a><a href="#"><img
						src="images/buy.gif" width="20" height="16" border="0" /></a></li>
			</ul>

			<h2>Friendly Link</h2>
			<ul class="menublock">
				<li><a href="http://www.ascenttech.cn" target="_blank">1212121</a></li>
				<li><a href="http://www.ascenttech.com.cn/" target="_blank">1212122</a></li>
			</ul>

		</div>

		<div id="footer">
			<p>
				<a href="http://www.ascenttech.com.cn/" target="_blank">SmartBuyGlasses™
					Group 2006-2016 | Copyright © All Rights Reserved</a>
			</p>
		</div>

	</div>
</body>
</html>
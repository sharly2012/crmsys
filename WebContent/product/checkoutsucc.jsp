<%@ page language="java" import="com.ascent.bean.*"
	contentType="text/html;charset=UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>AscentWeb电子商务</title>
<link rel="stylesheet" href="<%=path%>/css/andreas08(blue).css"
	type="text/css" media="screen,projection" />

<script language="javascript">
	
</script>
</head>

<body>
	<div class="head">
		<div id="container">
			<div id="header"></div>
			<div id="navigation">
				<ul>
					<li class="selected"></li>
					<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
					<li><a
						href="<%=request.getContextPath()%>/product/itservice.jsp">IT
							Service</a></li>
					<li><a
						href="<%=request.getContextPath()%>/product/products.jsp">E-Commerce</a></li>
					<li><a
						href="<%=request.getContextPath()%>/product/employee.jsp">Join
							Us</a></li>
					<li><a
						href="<%=request.getContextPath()%>/product/ContactUs.jsp">About
							Us</a></li>
				</ul>
			</div>

			<div id="content2">
				<table width="100%" height="41" border="0" align="center"
					cellpadding="0" cellspacing="0">
					<tr>
						<td width="15" height="18" align="left" valign="top"><div
								align="left"></div></td>
						<td width="385" align="left" valign="bottom" class="12">&nbsp;</td>
					</tr>
					<tr>
						<td height="4" colspan="2" align="left" valign="bottom"></td>
					</tr>
					<tr>
						<td height="15" align="left" valign="top">&nbsp;</td>
						<td height="15" align="left" valign="top" class="12">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<%
										Productuser p = (Productuser) session.getAttribute("productuser");
										if (p != null && p.getSuperuser().equals("3")) { //管理员
									%>
									<td width="30%"><div align="left">
											|&nbsp;&nbsp;欢迎,<%=p.getUsername()%>&nbsp;&nbsp;|&nbsp;&nbsp;<a
												href="<%=request.getContextPath()%>/login?a=out"
												class="table_t">注销</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
												href="javascript:history.go(-1)"><<< 返回</a>
										</div></td>
									<td width="20%"><div align="center">
											<a href="<%=request.getContextPath()%>/product/a=all"><img
												src="<%=request.getContextPath()%>\images\productslist.jpg"
												width="75" height="17" border="0" /></a>
										</div></td>
									<td width="15%"><div align="center">
											<a href="<%=request.getContextPath()%>/order?a=all">订单管理</a>
										</div></td>
									<td width="15%"><div align="center">
											<a href="<%=request.getContextPath()%>/product/a=all">继续购物</a>
										</div></td>
									<td width="15%"><div align="center">
											<a href="<%=request.getContextPath()%>/product/checkout.jsp">结算中心</a>
										</div></td>
									<%
										} else if (p == null) { //未注册用户
									%>
									<td width="30%"><div align="left">
											|&nbsp;&nbsp;欢迎,游客&nbsp;&nbsp;|&nbsp;&nbsp;<a
												href="<%=request.getContextPath()%>/product/register.jsp"
												class="table_t">注册</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
												href="javascript:history.go(-1)"><<< 返回</a>
										</div></td>
									<td width="20%"><div align="center">&nbsp;</div></td>
									<td width="15%"><div align="center">&nbsp;</div></td>
									<td width="15%"><div align="center">
											<a href="<%=request.getContextPath()%>/product?a=all">继续购物</a>
										</div></td>
									<td width="15%"><div align="center">
											<a href="<%=request.getContextPath()%>/product/checkout.jsp">结算中心</a>
										</div></td>

									<%
										} else { //刚注册用户
									%>
									<td width="30%"><div align="left">
											|&nbsp;&nbsp;欢迎,<%=p.getUsername()%>&nbsp;&nbsp;|&nbsp;&nbsp;<a
												href="<%=request.getContextPath()%>/login?a=out"
												class="table_t">注销</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
												href="javascript:history.go(-1)"><<< 返回</a>
										</div></td>
									<td width="20%"><div align="center">&nbsp;</div></td>
									<td width="15%"><div align="center">
											<a href="<%=request.getContextPath()%>/order?a=all">查看订单</a>
										</div></td>
									<td width="15%"><div align="center">
											<a href="<%=request.getContextPath()%>/product?a=all">继续购物</a>
										</div></td>
									<td width="15%"><div align="center">
											<a href="<%=request.getContextPath()%>/product/checkout.jsp">结算中心</a>
										</div></td>
									<%
										}
									%>
								</tr>
							</table> <br> <br>

							<center>
								<h3>
									<%
										String tishi = (String) request.getAttribute("error");
										if (tishi != null) {
									%>
									<%=tishi%>
									<%
										} else {
									%>
									发送订单过程出错了！
									<%
										}
									%>
								</h3>
							</center>
						</td>
					</tr>
				</table>
			</div>

			<div id="footer">
				<p>
					<a href="http://www.ascenttech.com.cn/" target="_blank">版权所有：北京亚思晟商务科技有限公司
						&copy;2004-2008|京ICP备05005681</a>
				</p>
			</div>


		</div>
</body>
</html>

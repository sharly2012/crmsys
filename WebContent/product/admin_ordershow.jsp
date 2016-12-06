<%@ page language="java" import="java.util.*,com.ascent.bean.*"
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
		</div>

		<div id="content2">
			<table width="100%" height="41" border="0" align="center"
				cellpadding="0" cellspacing="0">
				<tr>
					<td width="15" height="18" align="left" valign="top">
						<div align="left"></div>
					</td>
					<td width="385" align="left" valign="bottom" class="12">
						&nbsp;</td>
				</tr>
				<tr>
					<td height="4" colspan="2" align="left" valign="bottom"></td>
				</tr>

				<tr>
					<td height="15" align="left" valign="top">&nbsp;</td>
					<td height="15" align="left" valign="top" class="12">
						<table width="100%" height="20" border="0" cellpadding="0"
							cellspacing="0">
							<tr>
								<td height="20">
									<div class="right_proaducts">
										我的位置&gt;&gt;电子商务管理&gt;订单 <br /> <br />
									</div> <%
 	Productuser p = (Productuser) session.getAttribute("productuser");
 %>
									<table cellspacing="0" cellpadding="0" width="100%" border="0">
										<tbody>
											<tr>
												<%
													if (p != null && p.getSuperuser().equals("3")) { //管理员
												%>
												<td width="33%">
													<div align="left">
														|&nbsp;&nbsp;欢迎,<%=p.getUsername()%>&nbsp;&nbsp;|&nbsp;&nbsp;
														<a href="<%=path%>/login?a=out" class="table_t">注销</a>&nbsp;&nbsp;|<a
															href="javascript:history.back()"><<< 返回</a>
													</div>
												</td>
												<td width="19%">
													<div align="center">
														<a href="<%=path%>/product?a=all"> <img
															src="<%=path%>/images/productslist.jpg" width="75"
															height="17" border="0" />
														</a>
													</div>
												</td>
												<td width="16%">
													<div align="center">
														<a href="<%=path%>/order?a=all">订单管理</a>
													</div>
												</td>
												<td width="16%">
													<div align="center">&nbsp;</div>
												</td>
												<td width="16%" height="50">
													<div align="center">&nbsp;</div>
												</td>
												<%
													} else if (p != null && p.getSuperuser().equals("1")) { //注册用户
												%>
												<td width="33%">
													<div align="left">
														|&nbsp;&nbsp;欢迎,<%=p.getUsername()%>&nbsp;&nbsp;|&nbsp;&nbsp;
														<a href="<%=path%>/login?a=out" class="table_t">注销</a>&nbsp;&nbsp;|
													</div>
												</td>
												<td width="19%">
													<div align="center">&nbsp;</div>
												</td>
												<td width="16%">
													<div align="center">
														<a href="<%=path%>/order?a=all">订单管理</a>
													</div>
												</td>
												<td width="16%">
													<div align="center">
														<a href="<%=path%>/product?a=all">继续购物</a>
													</div>
												</td>
												<td width="16%" height="50">
													<div align="center">
														<a href="<%=path%>/product/checkout.jsp">结算中心</a>
													</div>
												</td>
												<%
													} else if (p == null) { //非注册用户
												%>
												<td width="33%">
													<div align="left">
														|&nbsp;&nbsp;欢迎,游客&nbsp;&nbsp;|&nbsp;&nbsp; <a
															href="<%=path%>/product/register.jsp" class="table_t">注册</a>&nbsp;&nbsp;|
													</div>
												</td>
												<td width="19%">
													<div align="center">&nbsp;</div>
												</td>
												<td width="16%">
													<div align="center">&nbsp;</div>
												</td>
												<td width="16%">
													<div align="center">
														<a href="<%=path%>/product?a=all">继续购物</a>
													</div>
												</td>
												<td width="16%" height="50">
													<div align="center">
														<a href="<%=path%>/product/checkout.jsp">结算中心</a>
													</div>
												</td>
												<%
													}
												%>
											</tr>
										</tbody>
									</table> <%
 	List adminorderList = (List) session.getAttribute("orderlist");
 	if (adminorderList == null || adminorderList.size() < 1) {
 %>
									<center>
										<h3>系统暂时没有订单！</h3>
									</center> <%
 	} else {
 %>
									<table class="mars" cellspacing="1" cellpadding="0"
										width="100%" border="0">
										<tbody>
											<tr bgcolor="#fba661" height="30">
												<td>
													<div align="center">编号</div>
												</td>
												<td>
													<div align="center">用户ID</div>
												</td>
												<td>
													<div align="center">查看</div>
												</td>
												<td>
													<div align="center">删除</div>
												</td>
											</tr>
											<%
												Iterator its = adminorderList.iterator();
													while (its.hasNext()) {
														Orders od = new Orders();
														od = (Orders) its.next();
														int orderid = od.getOrderid();
											%>
											<tr bgcolor="#f3f3f3">
												<td>
													<div align="center">
														<%=orderid%>
													</div>
												</td>
												<td>
													<div align="center">
														<a href="<%=path%>/order?a=lookuse&uid=<%=od.getUid()%>"><%=od.getUid()%></a>
													</div>
												</td>
												<td>
													<div align="center">
														<a href="<%=path%>/order?a=finditem&oid=<%=orderid%>">查看</a>
													</div>
												</td>
												<td>
													<div align="center">
														<a href="<%=path%>/order?a=delorder&oid=<%=orderid%>">删除</a>
													</div>
												</td>
											</tr>
											<%
												}
											%>
										</tbody>
									</table> <%
 	}
 %>
								</td>
							</tr>
						</table> <br />
						<div class="table_wz"></div>
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

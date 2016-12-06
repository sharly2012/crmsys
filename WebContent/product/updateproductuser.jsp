<%@ page language="java" import="com.ascent.bean.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>AscentWeb电子商务</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/andreas08(blue).css"
	type="text/css" media="screen,projection" />
</head>

<body>
	<form name="" method="post"
		action="<%=request.getContextPath()%>/user?a=update">
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
						<td height="4" colspan="2" align="left" valign="bottom"></td>
					</tr>

					<tr>
						<td height="15" align="left" valign="top" class="12">
							<%
								Productuser p = (Productuser) session.getAttribute("productuser");
								if (p != null && p.getSuperuser().equals("3")) {
									Productuser productuser = (Productuser) session.getAttribute("UID_Productuser");
							%>
							<table width="100%" height="20" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td height="20">
										<div class="right_proaducts">
											我的位置&gt;&gt;电子商务管理&gt;&gt;用户修改</div>
									</td>
								</tr>
							</table>
							<table width="680" border="0" cellpadding="0" cellspacing="0">
								<tbody>

									<tr>
										<td bgcolor="#467AA7" colspan="2" height="5"></td>
									</tr>
									<tr>
										<td colspan="2" height="7"></td>
									</tr>
									<tr>
										<td width="110" height="20" bgcolor="#bbddff" class="table_c">
											修改用户信息</td>
										<td width="439" bgcolor="#ffffff">
											&nbsp;&nbsp;&nbsp;&nbsp; <a href="javascript:history.back()">&lt;&lt;&lt;
												返回</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</td>
									</tr>
								</tbody>
							</table>
							<div class="table_wz">
								<table width="470" border="0" cellpadding="0" cellspacing="0"
									bgcolor="#F3F3F3">
									<tbody>
										<tr>
											<td colspan="4" height="10"></td>
										</tr>
									</tbody>
									<div>
										<input type="hidden" value="<%=productuser.getUid()%>"
											name="uid" />
									</div>
									<tr>
										<td class="table_hui" width="71" height="30">
											<div align="right">城市:</div>
										</td>
										<td class="table_c" width="166" height="30">
											<%
												if (productuser.getCity() == null) {
											%> <input name="city" type="text" value="" /> <%
 	} else {
 %> <input name="city" type="text" value="<%=productuser.getCity()%>" />
											<%
												}
											%>
										</td>
										<td class="table_c" width="70">
											<div class="table_hui" id="result_box" dir="ltr">
												<div align="right">用户名:</div>
											</div>
										</td>
										<td class="table_c" width="155"><input name="username"
											type="text" value="<%=productuser.getUsername()%>" /></td>
									</tr>
									<tr>
										<td class="table_hui" width="71" height="30">
											<div align="right">全名:</div>
										</td>
										<td class="table_c" width="166" height="30">
											<%
												if (productuser.getFullname() == null) {
											%> <input name="fullname" type="text" value="" /> <%
 	} else {
 %> <input name="fullname" type="text"
											value="<%=productuser.getFullname()%>" /> <%
 	}
 %>
										</td>
										<td class="table_c" width="70">
											<div class="table_hui" id="result_box" dir="ltr">
												<div align="right">Title:</div>
											</div>
										</td>
										<td class="table_c" width="155">
											<%
												if (productuser.getTitle() == null) {
											%> <input name="title" type="text" value="" /> <%
 	} else {
 %> <input name="title" type="text" value="<%=productuser.getTitle()%>" />
											<%
												}
											%>
										</td>
									</tr>
									<tr>
										<td class="table_hui" height="30">
											<div align="right">电话:</div>
										</td>
										<td class="table_c" height="30">
											<%
												if (productuser.getTel() == null) {
											%> <input name="tel" type="text" value="" /> <%
 	} else {
 %> <input name="tel" type="text" value="<%=productuser.getTel()%>" />
											<%
												}
											%>
										</td>
										<td class="table_c" height="30">
											<div class="table_hui" id="div" dir="ltr">
												<div align="right">密码:</div>
											</div>
										</td>
										<td class="table_c" height="30"><input name="password"
											type="password" value="<%=productuser.getPassword()%>" /></td>
									</tr>
									<tr>
										<td class="table_hui" height="25">
											<div align="right">Zip:</div>
										</td>
										<td class="table_c" height="25">
											<%
												if (productuser.getZip() == null) {
											%> <input name="zip" type="text" value="" /> <%
 	} else {
 %> <input name="zip" type="text" value="<%=productuser.getZip()%>" />
											<%
												}
											%>
										</td>
										<td class="table_hui" height="25">
											<div align="right">Job:</div>
										</td>
										<td class="table_hui" height="25"><span class="table_c">
												<%
													if (productuser.getJob() == null) {
												%> <input name="job" type="text" value="" /> <%
 	} else {
 %> <input name="job" type="text" value="<%=productuser.getJob()%>" />
												<%
													}
												%>
										</span></td>
									</tr>
									<tr>
										<td class="table_hui" height="30">
											<div align="right">Email:</div>
										</td>
										<td class="table_c" height="30"><input name="email"
											type="text" value="<%=productuser.getEmail()%>" /></td>
										<td class="table_hui" height="30">
											<div align="right">国家:</div>
										</td>
										<td class="table_c" height="30">
											<%
												if (productuser.getCountry() == null) {
											%> <input name="country" type="text" value="" /> <%
 	} else {
 %> <input name="country" type="text"
											value="<%=productuser.getCountry()%>" /> <%
 	}
 %>
										</td>
									</tr>
									<tr>
										<td height="30" align="right" class="table_hui">公司名称:</td>
										<td class="table_c" colspan="3" height="30">
											<%
												if (productuser.getCompanyname() == null) {
											%> <input name="companyname" type="text" value="" /> <%
 	} else {
 %> <input name="companyname" type="text"
											value="<%=productuser.getCompanyname()%>" /> <%
 	}
 %>
										</td>
									</tr>
									<tr>
										<td class="table_hui" height="25">
											<div align="right">公司地址:</div>
										</td>
										<td height="25" colspan="3" class="table_hui">
											<%
												if (productuser.getCompanyaddress() == null) {
											%> <input name="companyaddress" type="text" value="" /> <%
 	} else {
 %> <input name="companyaddress" type="text"
											value="<%=productuser.getCompanyaddress()%>" /> <%
 	}
 %>
										</td>
									</tr>
									<tr>
										<td height="80" class="table_hui" valign="top">
											<div align="right">备注:</div>
										</td>
										<td height="25" colspan="3" class="table_hui">
											<%
												if (productuser.getNote() == null) {
											%> <textarea name="note" cols="50" rows="4"></textarea> <%
 	} else {
 %> <textarea name="note" cols="50" rows="4"> <%=productuser.getNote()%></textarea>
											<%
												}
											%>
										</td>
									</tr>
									<tr>
										<td colspan="4" height="45">
											<div align="center">
												<input name="Submit" type="submit" class="table_hui"
													value="更新" />
											</div>
										</td>
									</tr>
								</table>
							</div> <%
 	} else {//最上面的if的else
 %>
							<center>
								<h3>对不起，您没有权限查看！！！</h3>
							</center> <%
 	}
 %>
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
	</form>
</body>
</html>

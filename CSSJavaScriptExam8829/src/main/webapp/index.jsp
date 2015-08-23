<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" import="java.sql.DriverManager" 
                import="java.sql.ResultSet" import="java.sql.Statement" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>电影租赁管理系统主界面</title>
<link href="appmy2.css" rel="stylesheet">
</head>
<body>
<div class="dody">
     <div class="body0"> 
          <h3>8829</h3>
     </div>
     <div class="dody1">
           <div class="dody11">
           <ul>
              <li class="main">
                  <a href="#">Customer管理</a>
              </li>
               <li class="main">
                 <a href="FilmIndex.jsp">Film设置</a>
          </li>
       </ul>
           </div>
           <div class="customer">
 <%
 Connection conn=null;
 Class.forName("com.mysql.jdbc.Driver"); //注册mysql驱动程序
 conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/sakila","root","");
 Statement stmt = conn.createStatement();
	String cty="select first_name,last_name,address_id,email,customer_id,last_update from customer";
	ResultSet rs = stmt.executeQuery(cty);
	 out.println("First Name|" + "\t"
				+ "Last Name|"+"\t"+"Address|"+"\t"+"Email|"+"\t"+"Customer|"+"\t"+"LastUpodate");
	 while (rs.next()) {
			out.println(rs.getString("first_name") + "\t"
					+ rs.getString("last_name")+"\t"+rs.getString("address_id") + "\t"+rs.getString("email") + "\t"
					+rs.getString("customer_id") + "\t"+rs.getString("last_update"));
		}		 
				 conn.close(); //关闭数据库
 %>             
           </div>
     </div>
</div>
</body>
</html>
<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>登录成功</title>
</head>
<body>
<%
    		String username = request.getParameter("username") ;
    		String password = request.getParameter("password") ;
    		
    		final String DBDRRIVER = "com.mysql.jdbc.Driver" ;
    		final String DBURL = "jdbc:mysql://localhost:3306/users?useUnicode=true&characterEncoding=gb2312" ;
    		final String DBUSERNAME = "root" ;
    		final String DBPASSWORD = "Lzx15982668386" ;
    		Connection conn = null ;
    		PreparedStatement pstmt = null ;
    		String sql = null ;
    		out.print(username);
    		if(username!=null&&password!=null){
    			try{
    				Class.forName(DBDRRIVER) ;
    				conn = DriverManager.getConnection(DBURL,DBUSERNAME,DBPASSWORD) ;
    				sql = "select * from user where username=? and userpassword=?;" ;
    				pstmt = conn.prepareStatement(sql) ;
    				pstmt.setString(1,username) ;
    				pstmt.setString(2,password) ;
    				ResultSet aa=pstmt.executeQuery();
    				if(!aa.next()){/* response.sendRedirect("login.jsp?please login again!"); */out.println("登陆失败，账号或密码有误<a href=login.jsp>点击返回登陆页面</a>");}
    				else {out.println("登录成功");out.println("<a href=index.html>点击跳转</a>");
    				pstmt.close() ;
    				conn.close() ;}
    	
    			}catch(Exception e){
    	%>
    				<h3>登录失败!!!</h3>
    				<h3><%=e%></h3>
    	<%    	
    			}
    		}
    	%>
</body>
</html>
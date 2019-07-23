<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>
</head>
<body>
<%
    		String username = request.getParameter("username") ;
    		String password = request.getParameter("userPassword") ;
    		String mobilephonenumber = request.getParameter("mobilephonenumber") ;
    		String age = request.getParameter("age") ;
    		String zip = request.getParameter("zip") ;
    		
    		final String DBDRRIVER = "com.mysql.jdbc.Driver" ;
    		final String DBURL = "jdbc:mysql://localhost:3306/users?useUnicode=true&characterEncoding=gb2312" ;
    		final String DBUSERNAME = "root" ;
    		final String DBPASSWORD = "Lzx15982668386" ;
    		Connection conn = null ;
    		PreparedStatement pstmt = null ;
    		String sql = null ;
    	
    		if(username!=null&&password!=null){
    			try{
    				Class.forName(DBDRRIVER) ;
    				conn = DriverManager.getConnection(DBURL,DBUSERNAME,DBPASSWORD) ;
    				sql = "insert into user (username,userpassword,mobilephonenumber,age,zip) values (?,?,?,?,?)" ;
    				pstmt = conn.prepareStatement(sql) ;
    				pstmt.setString(1,username) ;
    				pstmt.setString(2,password) ;
    				pstmt.setString(3,mobilephonenumber) ;
    				pstmt.setString(4,age) ;
    				pstmt.setString(5,zip) ;
    				pstmt.executeUpdate() ;
    				pstmt.close() ;
    				conn.close() ;
    	%>
    				<h3>注册成功!!!</h3>
    				<h3>三秒钟后自动转到登录页面!!!</h3>
    				<h3>如果没有跳转，请点击<a href="login.jsp">这里</a>!!!</h3>
    	<%
    				response.setHeader("refresh","3;url=login.jsp") ;
    			}catch(Exception e){
    	%>
    				<h3>注册失败!!!</h3>
    				<h3><%=e%></h3>
    	<%    	
    			}
    		}
    	%>

</body>
</html>
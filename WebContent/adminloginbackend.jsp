<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String userid=request.getParameter("name");
session.putValue("userid",userid);
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from admin where email='"+userid+"' and password='"+password+"'");
try{
rs.next();
if(rs.getString("password").equals(password)&&rs.getString("email").equals(userid))
{
	response.sendRedirect("data.jsp");  

}
else{
out.println("Invalid password or username.");
}
}
catch (Exception e) {
e.printStackTrace();
}

%>

</body>
</html>
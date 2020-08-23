<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String userid=request.getParameter("userid");
session.putValue("userid",userid);
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from users where phone='"+userid+"' and password='"+password+"'");
try{
rs.next();
if(rs.getString("password").equals(password)&&rs.getString("phone").equals(userid))
{
out.println("Welcome name " +rs.getString("name"));
out.println("Welcome email " +rs.getString("email"));
out.println("Welcome phone " +rs.getString("phone"));
out.println("Welcome  dictrict" +rs.getString("dictrict"));
}
else{
out.println("Invalid password or username.");
}
}
catch (Exception e) {
e.printStackTrace();
}
%>
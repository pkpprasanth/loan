<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String name=request.getParameter("name");
String addNo=request.getParameter("addNo");
String area=request.getParameter("area");
String street=request.getParameter("street");
String pin=request.getParameter("pin");
String disc=request.getParameter("disc");
String phn=request.getParameter("phn");
String gram=request.getParameter("gram");
String email=request.getParameter("email");
String password=request.getParameter("password");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into users(name,building,area,street,pincode,dictrict,phone,gram,email,password)values('"+name+"','"+addNo+"','"+area+"','"+street+"','"+pin+"','"+disc+"','"+phn+"','"+gram+"','"+email+"','"+password+"')");

response.sendRedirect("login.html");  

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
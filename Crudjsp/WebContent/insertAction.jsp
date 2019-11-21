<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ page import="java.sql.*" %>
<%
boolean flag=false;
String emp_name=request.getParameter("ename");
String emp_salary=request.getParameter("esal");
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","KRISHNAPRIYA","krishnapriya");
   PreparedStatement pst=con.prepareStatement("insert into ecemployee(emp_name,emp_salary) values('"+emp_name+"','"+emp_salary+"')");
    int rs= pst.executeUpdate();
    flag=true;
}catch(ClassNotFoundException e){
	e.printStackTrace();
}catch(SQLException s){
		s.printStackTrace();
	}

if(flag){
	response.sendRedirect("Success.html");
}
%>

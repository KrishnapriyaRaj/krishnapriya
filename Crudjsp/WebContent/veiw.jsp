<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
try
{ Class.forName("oracle.jdbc.driver.OracleDriver");
	   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","KRISHNAPRIYA","krishnapriya");
	   PreparedStatement pst=con.prepareStatement("select * from ecemployee");
	    ResultSet rs= pst.executeQuery();
	    %>
	    <table border="1">
	    <tr><th>Employee Name</th><th>Salary</th></tr>
	    
	    
	    <% while(rs.next()){ %>
		   <tr><td> <%= rs.getString(1) %></td><td><%= rs.getString(2)%> </td></tr>
		   
	    
		<%
	    }
		}catch(ClassNotFoundException e){
		e.printStackTrace();
		}catch(SQLException s){
		s.printStackTrace();}
	   
	 %>
	   
	    
</table>table>
<a href="index.html">Back to Home</a>"
</body>
</html>

<%@page import="java.util.Iterator"%>
<%@page import="com.bean.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Welcome to Spring MVC</h2>
<table border="1">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Salary</th>
	</tr>
<%
List<Employee> listOfEmp = (List<Employee>)request.getAttribute("listOfEmp");
Iterator<Employee> ii = listOfEmp.iterator();
while(ii.hasNext()){
Employee emp = ii.next();
%>
		<tr>
			<td><%=emp.getId() %></td>
			<td><%=emp.getName() %></td>
			<td><%=emp.getSalary() %></td>
		</tr>
<%
}
%>
</table>

</body>
</html>
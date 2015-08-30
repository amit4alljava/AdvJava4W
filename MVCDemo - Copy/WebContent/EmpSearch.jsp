<%@page import="com.srivastava.dto.EmployeeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EmpSearch</title>
<link href="css/bootstrap.css" rel="stylesheet" />
<script src="js/jquery-1.11.2.min (2).js"></script>
<script src="js/bootstrap.js"></script>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-sm-12">
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">MyCompany</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav pull-right">
        <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
        <li><a href="#">About Us</a></li>
		<li><a href="#">Contact Us</a></li>
      </ul>
      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>
</div>
<div class="row">
<div  class="col-sm-4">
<form action="empController" method="post">
<label>Empno</label> <input type="text" placeholder="Enter the Empno" name="empno" class="form-control" />
<button type="submit" class="btn btn-primary">Search<span class="glyphicon glyphicon-search"></span></button>

</form>
</div>
<div class="col-sm-8">
<table class="table table-striped table-bordered table-hover table-responsive">
<tr>
<td>S.no</td>
<td>EmpNo</td>
<td>EmpName</td>
<td>EmpSalary</td>
</tr>

<c:forEach items="${requestScope['emp_list']}" var="empObject" varStatus="loopVar">
<c:if test="${loopVar.count mod 2 eq 0 }">
<tr class="success">
</c:if>
<c:if test="${loopVar.count mod 2 ne 0 }">
<tr class="danger">
</c:if>
<td>${loopVar.count}</td>
<td>${empObject.empno }</td>
<td>${empObject.name }</td>
<td>${empObject.salary }</td>
</tr>
</c:forEach>




<%-- ${emplist } --%>

<%-- <%
ArrayList<EmployeeDTO> empList  = (ArrayList<EmployeeDTO>)request.getAttribute("emplist");
if(empList!=null && empList.size()>0){
for(EmployeeDTO empDTO : empList){
%>
<tr>
<td><%=empDTO.getEmpno() %></td>
<td><%=empDTO.getName() %></td>
<td><%=empDTO.getSalary() %></td>
</tr>
<% 	
}
}
else{
%>
<tr>
<td colspan="3">No Record Found </td>
</tr>
<%
}
%> --%>
</table>
</div>
</div>
</div>
</body>
</html>
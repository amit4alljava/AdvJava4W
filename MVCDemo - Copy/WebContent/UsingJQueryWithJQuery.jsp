<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="tcs" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<tcs:autocomplete name="course" list="courseList" data="C,C++,Java,JQuery,JavaScript"/>
<tcs:autocomplete name="city" list="cityList" data="Delhi, Mumbai,Chennai, Kolkata"/>

</body>
</html>
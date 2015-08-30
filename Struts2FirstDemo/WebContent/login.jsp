<%@ page language="java" contentType="text/html; "
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html >

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><s:text name="login.title"/></title>
<style type="text/css">
.errorMessage{color: red;}
</style>
</head>
<body>
<s:form action="loginAC" method="post">
<s:textfield name="userid" key="userid.lbl" tooltip="Enter the Userid"/>
<s:password name="pwd" key="pwd.lbl" tooltip="Enter the Password"/>
<s:submit label="Login"/>
<s:reset/>
</s:form>
</body>
</html>
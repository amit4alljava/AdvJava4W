<%@ page language="java" contentType="text/html; "
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<s:a action="lang.action?request_locale=en_US">English</s:a>
<s:a action="lang.action?request_locale=hi_IN">हिंदी</s:a>
<s:a action="lang.action?request_locale=fr_FR">français</s:a>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: fliang
  Date: 2/14/2016
  Time: 4:48 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Simple Chat</title>
</head>
<body>
<g:form action="join">
    <label for="nickname">Please enter your name</label>
    <g:textField name="nickname"/>
    <g:submitButton name="Join Chat"/>
</g:form>
</body>
</html>
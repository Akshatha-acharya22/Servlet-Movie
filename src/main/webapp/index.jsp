<!DOCTYPE html>
<%@page import="java.time.LocalDate"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Jsp file </h1>

<% int a=10;
System.out.println();
%>


<%! int b=5; %>

<%System.out.println(a); %>
<%System.out.println(b); %>


<h1 style='color:red'><%=b%></h1>

<h3><%= LocalDate.now() %></h3>

<%@include file="home.html" %>

<%=this %>

</body>
</html>
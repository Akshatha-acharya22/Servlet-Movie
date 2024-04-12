<%@page import="dto.Movie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Movies</title>
</head>
<body>
<%List<Movie> list=(List<Movie>)request.getAttribute("list");%>
<div>
<table border="2px">
<tr>
<th>Name</th>
<th>Language</th>
<th>Genrec</th>
<th>Rating</th>
<th>Image</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<% for(Movie movie: list){ %>
<tr>
<td><%=movie.getName()%></td>
<td><%=movie.getLanguage()%></td>
<td><%=movie.getGenre()%></td>
<td><%=movie.getRating()%></td>
<td>Img</td>
<td><button>Edit</button></td>
<td><button>Delete</button></td>
</tr>
<%}%>
</table>
<a href="home.html"><button>back</button></a>
</div>
</body>
</html>
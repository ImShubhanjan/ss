<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Page</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

</head>
<body>
	<br>
	<div class="container">
	
		<h2>Search Result</h2>
		
		<table class="table table-dark table-striped text-center" border="1">
          <tr class="row">
              <th class="col-4">ID</th>
              <th class="col-4">NAME</th>
              <th class="col-4">CITY</th>
          </tr>
		
		<% 
			
			try{
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/test","devuser","dpsrubypark7@");
				
				PreparedStatement stmt = conn.prepareStatement("select * from customer");
				
				ResultSet rs = stmt.executeQuery();
				
				while(rs.next()) {
			%>		
		
			<tr class="row">
				<td class="col-4"><%=rs.getInt(1)%></td>
				<td class="col-4"><%=rs.getString(2)%></td>
				<td class="col-4"><%=rs.getString(3) %></td>
			</tr>
		
			<% 
					
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		%>
		</table>
		<a href="index.html">Index Page</a>
	</div>
</body>
</html>
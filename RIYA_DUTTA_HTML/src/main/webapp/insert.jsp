<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Page</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

</head>
<body>

	<div class="container" align="center">
	
		<% 
		
		String name = request.getParameter("name");
		String city = request.getParameter("city");
			
			try{
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/test","devuser","dpsrubypark7@");
				
				PreparedStatement stmt = conn.prepareStatement("insert into customer (name,city) values (?,?)");
				
				stmt.setString(1,name);
				stmt.setString(2,city);
				
				int x = stmt.executeUpdate();
				
				if(x>0){
					System.out.println("Data successfully inserted");
					out.println("Data successfully inserted");
				}
				else{
					System.out.println("Data not successfully inserted");
					out.println("Data Insertion Error!");
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		
		%>
		<a href="index.html">Index Page</a>
		
	</div>
</body>
</html>
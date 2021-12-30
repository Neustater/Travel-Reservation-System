<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Verify Uniqueness of Account</title>
	<link rel="stylesheet" href="styles.css">
</head>
<body>
	<% 
	try{
		String ID = request.getParameter("ID");
		String password = request.getParameter("pw");
		
		if(ID.length() > 20 || password.length() > 20){
			out.println("ID and password cannot exceed 20 characters.");
		}
		else{
			ApplicationDB db = new ApplicationDB();
			Connection con = db.getConnection();
			
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery("Select c.user_ID From user c Where " + 
					"BINARY c.user_ID = \'" + ID + "\'");
			if(rs.next()){//ID already exists
				out.println("ID already exists. Please use a differnet ID.\n");
			}
			else{
				PreparedStatement ps1 = con.prepareStatement("insert into user values(?,?,?)");
				ps1.setString(1,ID);
				ps1.setString(2,password);
				ps1.setInt(3,0);
				ps1.executeUpdate();
				ps1.close();

				
				String f_name = request.getParameter("f_name");
				if(f_name.length() > 30){
					f_name = f_name.substring(0,30);
				}
				String l_name = request.getParameter("l_name");
				if(l_name.length() > 30){
					l_name = l_name.substring(0,30);
				}
				ResultSet rs2 = statement.executeQuery("Select count(*) from customer");
				rs2.next();
				int Passenger_ID = rs2.getInt("count(*)") + 1;
				
				PreparedStatement ps2 = con.prepareStatement("insert into customer values(?,?,?,?)");
				ps2.setInt(1,Passenger_ID);
				ps2.setString(2, ID);
				ps2.setString(3, f_name);
				ps2.setString(4, l_name);
				ps2.executeUpdate();
				
				rs2.close();
				ps2.close();
				out.println("ID successfully created.");
			}
			rs.close();
			statement.close();
			con.close();
		}
	}
	catch(Exception e){
		out.println(e);
	}
	%>
	<br>
	<form action="index.jsp">
		<input type="submit" value="Go back to Log in Page">
	</form>
</body>
</html>
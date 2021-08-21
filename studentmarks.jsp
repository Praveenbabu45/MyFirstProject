<%@page import="java.util.concurrent.ExecutionException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<body bgcolor='violet'></body>
<%!
Statement stmt;
Connection con;
ResultSet rs;
%>
<%
try{
//System.out.println("Loop enered");
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
String vsql = "select Sid,Marks from studentdetail";
stmt=con.createStatement();
rs=stmt.executeQuery(vsql);
//ResultSetMetaData rsmd = rs.getMetaData();
out.println("<h1><center>");
out.println("Student_InternalMarks");
out.println("</center></h1>");
while(rs.next())
{
out.println("<center><h3>");
out.println("Student_ID:"+rs.getString(1)+ ","+"Student_InternalMarks:"+rs.getString(2)+   "</b><br><br>");
out.println("</h3></center>");
}
}
catch(Exception e){
	out.println(e.getMessage());
}finally{
	//close the connection
	try{
		con.close();
	}catch(Exception e1){}
}
%>



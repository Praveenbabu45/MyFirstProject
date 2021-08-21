<body align="center" bgcolor="grey">
<div style="position:absolute;left:420px;top:120px;background-color:skyblue;padding:110px;border-radius: 1cm;">			<b></b>
<form >

<table>
<tr>
<td><%
int marks=(Integer)session.getAttribute("marks");
/*String uname = request.getParameter("uname");
String pwd = request.getParameter("pwd");
out.println("<center>");
out.println("<h3>");
out.println("Login Successfull_");
out.println("Welcome to:"+uname);
out.println("<br>");
out.println("</h3>");*/
out.println("<center><h2>");
out.println("you internal marks are:"+marks);
out.println("<br>");
out.println("</h2></center>");
out.println("<br><hr>");

if(marks>=30 && marks<=60){
	out.println("<center><h3>");
    out.println("you are eligible to write the exam");
    out.println("</h3></center>");
 
    out.println("<center>");
    out.println("<h1>");
	%>
	<a href="startexam.jsp">Start_Exam</a>
	<%
	out.println("</center>");
	out.println("</h1>");
}
else {
	out.println("<center><h3>");
    out.println("you are not eligible to write the exam");
    out.println("</h3></center>");
	out.println("<center><h2>");
	out.println("Better_Luck_Next_Time");
	out.println("</h2></center>");
}
%>

</table>
</form>
</div>


</body>



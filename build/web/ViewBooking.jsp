<%-- 
    Document   : ViewBooking
    Created on : Aug 5, 2019, 4:46:18 PM
    Author     : dell
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Enhanced Resort Management System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="cstyle.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">
       <div class="row">
           <div class="col-lg-12">
              <div class="sidebarContent"><img align="center" height="10%" width="80%" src="image/resort.jpg" class="img-fluid" ></div>                        
           </div>
       </div>       
       <div class="row">
           <div class="col-lg-121">                    
              <ul class="nav nav-tabs ">
                  <li class="nav-item">
                    <a class="nav-link active" href="AdminHome.jsp">Home</a>
                </li>                  
                <li class="nav-item">
                    <a class="nav-link " href="BookRoom.jsp">Book Room</a>
                </li>               
                <li class="nav-item">
                    <a class="nav-link" href="ViewBooking.jsp">View Room Booking</a>
                </li>      
                 <li class="nav-item">
                    <a class="nav-link" href="index.html">Logout</a>
                </li>
            </ul>                       
               </div>
           </div>
           <div class="row">
               <div class="col-lg-4">
               
           </div>
                <div class="col-lg-4">
                 <%
                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try
    {
        
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/resort","root","root1234");
           
             st = c1.createStatement();
             q="select b_id,roomno,roomt,cap,rs,fd,td from broom";
             rs1=st.executeQuery(q);
             out.println("<table border=1px solid>");
              out.println("<tr><th>Id</th><th>Room Number</th><th>Room Type</th><th>Capacity</th><th>Rs</th><th>From Date</th><th>To Date</th></tr>");
             while(rs1.next())
             {
                 int id=rs1.getInt("b_id");
                 String roomno=rs1.getString("roomno");
                 String roomt=rs1.getString("roomt");                 
                 String cap=rs1.getString("cap");
                 String rs=rs1.getString("rs");
                 String fd=rs1.getString("fd");
                 String td=rs1.getString("td");
                 out.println("<tr><td>"+id+"</td><td>"+roomno+"</td><td>"+roomt+"</td><td>"+cap+"</td><td>"+rs+"</td><td>"+fd+"</td><td>"+td+"</td></tr>");
                 out.println("</div>");
             }   
              }
             catch(Exception e)
             {
                   out.print(e);
             }
            
   %>
           </div>
           </div>                        
       </div>
    </body>
</html>

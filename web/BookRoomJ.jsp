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
   
    try {
          
             String room=request.getParameter("room");
             String roomt=request.getParameter("roomt");
             String cap=request.getParameter("cap");
             String rs=request.getParameter("rs");
             String fd=request.getParameter("fd");
             String td=request.getParameter("td");
             
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/resort","root","root1234");
             
             st = c1.createStatement();
             q="insert into broom(roomno,roomt,cap,rs,fd,td) values('"+ room +"','"+ roomt +"','"+ cap +"','"+ rs +"','"+ fd +"','"+ td +"')";
             
             st.executeUpdate(q);
             out.println("<br/><br/><br/><br/>Booking Room Details Inserted Successfully...");
                   out.println("<a href='AdminHome.jsp'>Click Here To Continue</a>");
    }
    catch(Exception e)
    {
                    out.println(e);
                     out.println("<a href='BookRoom.jsp'>Try Again</a>");
    }        
            
   %>
               </div>
           </div>                        
       </div>
    </body>
</html>

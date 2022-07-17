<%-- 
    Document   : BookRoom
    Created on : Aug 5, 2019, 4:48:39 PM
    Author     : dell
--%>

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
                    <br>
                   <br>
                   <h4 class="text-primary">Boook Room</h4><br />
                   <form method="POST" action="BookRoomJ.jsp">
                    <div class="form-group">
                        <label for="inputName">Room No.</label>
                        <input class="form-control" type="text" name="room" placeholder="Enter Room Number" />
                    </div>

                    <div class="form-group">
                        <label for="inputPass">Room Type</label>
                        <input class="form-control" type="text" name="roomt" placeholder="Enter Room Type" />
                    </div>                    

                    <div class="form-group">
                        <label for="inputMobile">Capacity</label>
                        <input class="form-control" type="text" name="cap" placeholder="Enter Capacity" />
                    </div>
                       
                       <div class="form-group">
                        <label for="inputMobile">Rs.</label>
                        <input class="form-control" type="text" name="rs" placeholder="Enter Rupees" />
                    </div>
                       
                       <div class="form-group">
                        <label for="inputMobile">From Date</label>
                        <input class="form-control" type="text" name="fd" placeholder="Enter From Date" />
                    </div>
                       
                       <div class="form-group">
                        <label for="inputMobile">To Date</label>
                        <input class="form-control" type="text" name="td" placeholder="Enter To Date" />
                    </div>
                                        
                    <button type="submit" class="btn btn-primary">Book Room</button>
                    <br>                    
                </form> 
               </div>
           </div>                        
       </div>
    </body>
</html>

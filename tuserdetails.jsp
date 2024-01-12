<%-- 
    Document   : thome
    Created on : Aug 24, 2015, 11:55:41 AM
    Author     : java2
--%>

<%@page import="com.cloudarmor.kk.action.TrippleDes"%>
<%@page import="com.cloudarmor.kk.action.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>CloudArmor</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
        <link href='http://fonts.googleapis.com/css?family=Merienda+One' rel='stylesheet' type='text/css' />
    </head>
    <body>	    
        <div id="header_bg">
            <div id="logo">
                <h1><a href="#" style="color: black">CloudArmor</a></h1>
                <center>
                    <h1 style="font-size: 26px;line-height: 30px;font-family: 'Merienda One', cursive;">Supporting Reputation-based
                        Trust Management<br /> for Cloud Services</h1>
                </center>
            </div>
            <div id="prew_img">
                <ul class="round">
                    <li><img src="images/header1.jpg" alt="" /></li>
                    <li><img src="images/header2.jpg" alt="" /></li>
                    <li><img src="images/header3.jpg" alt="" /></li>
                    <li><img src="images/header4.jpg" alt="" /></li>
                    <li><img src="images/header5.jpg" alt="" /></li>
                    <li><img src="images/header6.jpg" alt="" /></li>
                </ul>
                <script type="text/javascript" src="lib/jquery.js"></script>
                <script type="text/javascript" src="lib/jquery.roundabout.js"></script>
                <script type="text/javascript">
                    $(document).ready(function () {
                        $('.round').roundabout();
                    });

                </script>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="thome.jsp" class="active">Home</a></li>
                    <li><a href="tuserdetails.jsp">User Details</a></li>   
                    <li><a href="tpdetails.jsp">Service_Details</a></li>
                    <li><a href="tpfeedback.jsp">Feedback</a></li>
                    <li><a href="index.html">Log out</a></li>
                </ul>
                <div class="clear"></div>
            </div>
            <div id="black_bg" style="height: 300px;color: white;"><br />
                <h1 style="margin-left: 450px;color: white">User Details</h1><br />
                <table border="1" style="margin-left: 90px;text-align: center">
                    <tr>
                        <th>User ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Birth Day</th>
                        <th>Location</th>
                        <th>Contact No</th>
                        <th>IP Address</th>
                        <th>Signup Time</th>
                    </tr>
                    <tr>
                        <%
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                            try {
                                con = Dbconnection.getConnection();
                                st = con.createStatement();
                                rs = st.executeQuery("select * from user");
                                while (rs.next()) {%>
                        <td><%=rs.getString("uid")%></th>  
                        <td><%=new TrippleDes().encrypt(rs.getString("name").substring(0, 5))%></td>  
                            <td><%=new TrippleDes().encrypt(rs.getString("email").substring(0, 5))%></td>  
                            <td><%=new TrippleDes().encrypt(rs.getString("dob").substring(0, 5))%></td>  
                            <td><%=new TrippleDes().encrypt(rs.getString("location").substring(0, 5))%></td>  
                            <td><%=new TrippleDes().encrypt(rs.getString("contactno").substring(0, 5))%></td>  
                            <td><%=rs.getString("ipaddress")%></td>  
                            <td><%=rs.getString("rtime")%></td>  
                    </tr> 
                    <%}
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
                </table>
            </div>	
            <div id="footer">
                <p>Copyright &copy; 2015-2016. <!-- Do not remove -->Designed by Rushikesh<!-- end --></p>
            </div>
        </div>
    </body>
</html>

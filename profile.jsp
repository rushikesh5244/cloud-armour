<%-- 
    Document   : uhome
    Created on : Aug 24, 2015, 11:51:34 AM
    Author     : java2
--%>

<%@page import="com.cloudarmor.kk.action.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
    <style>
        #signup-form { 
            width: 510px; 
            margin: 0 auto; 
            margin-top: 50px; 
            margin-bottom: 50px; 
            background: #fff; 
            padding: 40px; 
            border: 10px solid #f2f2f2; 
            height: 300px;
            border-radius: 25px;
        }
    </style>
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
                    <li><a href="uhome.jsp" class="active">Home</a></li>
                    <li><a href="profile.jsp">User Profile</a></li>   
                    <li><a href="search.jsp">Search</a></li>
                    <li><a href="purchased.jsp">Purchased Cloud</a></li>
                    <li><a href="index.html">Log out</a></li>
                </ul>
                <div class="clear"></div>
            </div>
            <div id="black_bg" style="height: 500px;background: transparent">
                <div id="signup-form">
                    <%
                        Connection con = null;
                        Statement st = null;
                        ResultSet rs = null;
                        String uid = session.getAttribute("uid").toString();
                        System.out.println("The Session UID "+uid);
                        try {
                            con = Dbconnection.getConnection();
                            st = con.createStatement();
                            rs = st.executeQuery("select * from user where uid='" + uid + "'");
                            if (rs.next()) {%>

                    <center>
                        <h1>Profile</h1>
                        <div style="height: 300px;color: black"><br />
                            <label style="font-size: 20px">Name</label>&nbsp;&nbsp;<input type="text" value="<%=rs.getString("name")%>" readonly="" style="margin-left: 48px;border: 0px" class="textbox1"/><br /><br />
                            <label style="font-size: 20px">Email ID</label>&nbsp;&nbsp;<input type="text" value="<%=rs.getString("email")%>" readonly="" style="margin-left: 25px" class="textbox1"/><br /><br />
                            <label style="font-size: 20px">Birth Day</label>&nbsp;&nbsp;<input type="text" value="<%=rs.getString("dob")%>" readonly="" style="margin-left: 25px" class="textbox1"/><br /><br />
                            <label style="font-size: 20px">Location</label>&nbsp;&nbsp;<input type="text" value="<%=rs.getString("location")%>" readonly="" style="margin-left: 24px" class="textbox1"/><br /><br />
                            <label style="font-size: 20px">Contact No</label>&nbsp;&nbsp;<input type="text" value="<%=rs.getString("contactno")%>" readonly="" class="textbox1"/>
                        </div>
                    </center>

                    <%}
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
                </div>   
            </div>	
            <div id="footer">
                <p>Copyright &copy; 2015-2016. <!-- Do not remove -->Designed by Rushikesh<!-- end --></p>
            </div>
        </div>
    </body>
</html>


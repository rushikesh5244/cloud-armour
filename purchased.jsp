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
                    <center><h1>Cloud Purchased Details</h1></center><br />
                    <table border="1" style="margin-left: 80px;text-align: center">
                        <tr>
                            <th>Service Model</th>
                            <th>Service Name</th>
                            <th>Duration</th>
                            <th>Purchased Date</th>
                        </tr>
                        <tr>
                            <%
                                String email = session.getAttribute("email").toString();
                                
                                Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                try {
                                    con = Dbconnection.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from cart where name='" + email + "' AND status='YES' AND cstatus='No'");
                                    while (rs.next()) {
                                        System.out.println("The Service model is "+rs.getString("productname"));
                            %>
                            <td><%=rs.getString("productname")%></td>
                            <td><%=rs.getString("productitem")%></td>
                            <td><%=rs.getString("quantity")%> Days</td>
                            <td><%=rs.getString("pdate")%></td>
                        </tr>
                        <%}
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }
                        %>

                    </table>
                </div>   
            </div>	
            <div id="footer">
                <p>Copyright &copy; 2015-2016. <!-- Do not remove -->Designed by Rushikesh<!-- end --></p>
            </div>
        </div>
    </body>
</html>


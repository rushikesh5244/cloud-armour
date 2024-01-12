<%-- 
    Document   : thome
    Created on : Aug 24, 2015, 11:55:41 AM
    Author     : java2
--%>
<%@page import="com.cloudarmor.kk.action.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
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
    <body>	
        <%
            if(request.getParameter("pmsg")!=null)
            {%>
            <script>alert('Feedback Published');</script>
            <%}
            if(request.getParameter("rmsg")!=null)
            {%>
            <script>alert('Feedback Revoked');</script>    
            <%}
        %>
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
                <table border="1" style="text-align: center;margin-left: 180px;" width="700px;">
                    <tr>
                        <th>Product Name</th>
                        <th>Rating Status</th>
                        <th>Rating Value</th>
                        <th>Comments</th>
                        <th>IP Address</th>
                        <th>Comment date</th>
                        <th>User ID</th>
                        <th>Status</th>
                        <th>Action</th>
                        <th>Action</th>
                    </tr>
                    <tr>
                        <center><h1 style="color: white">Product Feedback</h1></center><br />
                            <%
                                Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                try {
                                    con = Dbconnection.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from feed");
                                    while (rs.next()) {
                            %>
                        <td><%=rs.getString("feedback")%></td>
                        <td><%=rs.getString("rating")%></td>
                        <td><%=rs.getString("ratingvalues")%></td>
                        <td><%=rs.getString("comments")%></td>
                        <td><%=rs.getString("ipaddr")%></td>
                        <td><%=rs.getString("date_time")%></td>
                        <td><%=rs.getString("uid")%></td>
                        <td><%=rs.getString("status")%></td>
                        <td><a href="publish.jsp?<%=rs.getString("feedback")%>,<%=rs.getString("uid")%>" style="color: white">Publish</a></td>
                        <td><a href="revoke.jsp?<%=rs.getString("feedback")%>,<%=rs.getString("uid")%>" style="color: white">Revoke</a></td>
                    </tr>
                    <%
                            }
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

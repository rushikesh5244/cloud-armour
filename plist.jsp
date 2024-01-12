<%-- 
    Document   : additems
    Created on : Aug 24, 2015, 2:32:58 PM
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
        <style>
            #signup-form { 
                width: 800px;
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
    </head>
    <body>	
        <%
            if(request.getParameter("msg")!=null)
            {%>
            <script>alert('Updated Successfully');</script>  
            <%}
            if(request.getParameter("dmsg")!=null)
            {%>
            <script>alert('Product Removed Successfully');</script>  
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
                    <li><a href="chome.jsp" class="active">Home</a></li>
                    <li><a href="additems1.jsp">Add Service</a></li>   
                    <li><a href="plist.jsp">Service List</a></li>
                    <li><a href="accesslist.jsp">Access List</a></li>
                    <li><a href="index.html">Log Out</a></li>
                </ul>
                <div class="clear"></div>
            </div>
            <div id="black_bg" style="height: 550px;color: black;background: transparent">
                <div id="signup-form">
                    <table border="1" style="text-align: center" width="800px;">
                        <tr>
                            <th>Service ID</th>
                            <th>Service Image</th>
                            <th>Service Model</th>
                            <th>Service Name</th>
                            <th>Deploy Model</th>
                            <th>Price</th>
                            <th>Update Date</th>
                            <th>Remove</th>
                            <th>Update</th>
                        </tr>
                        <tr>
                            <center><h1 style="color: red">Service Details</h1></center><br />
                                <%
                                    Connection con = null;
                                    Statement st = null;
                                    ResultSet rs = null;
                                    String imgid = null;
                                    try {
                                        con = Dbconnection.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from product");
                                        while (rs.next()) {
                                            imgid = rs.getString("imgid");
                                %>
                            <td><%=rs.getString("imgid")%></td>
                            <td><img src="Image.jsp?id=<%=rs.getString("imgid")%>" width="70" height="30"/></td>
                            <td><%=rs.getString("pname")%></td>
                            <td><%=rs.getString("pitems")%></td>
                            <td><%=rs.getString("bname")%></td>
                            <td><%=rs.getString("price")%></td>
                            <td><%=rs.getString("validity")%></td>
                            <td><a href="delete.jsp?id=<%=rs.getString("imgid")%>" style="text-decoration: none">Remove</a></td>
                            <td><a href="update.jsp?id=<%=rs.getString("imgid")%>" style="text-decoration: none">Edit</a></td>
                        </tr>
                        <%
                                }
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


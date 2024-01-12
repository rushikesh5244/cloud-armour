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
                        <th>Service ID</th>
                        <th>Service Image</th>
                        <th>Service Model</th>
                        <th>Service Name</th>
                        <th>Deploy Model</th>
                        <th>Price</th>
                        <th>Update Date</th>
                    </tr>
                    <tr>
                        <center><h1 style="color: white">Service Details</h1></center><br />
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
                        <td><%=rs.getString("price")%> /day</td>
                        <td><%=rs.getString("validity")%></td>
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

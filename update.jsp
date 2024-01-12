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
                width: auto; 
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
                    <li><a href="additems1.jsp">Add Items</a></li>   
                    <li><a href="plist.jsp">Product List</a></li>
                    <li><a href="#">TM</a></li>
                    <li><a href="index.html">Log Out</a></li>
                </ul>
                <div class="clear"></div>
            </div>
            <div id="black_bg" style="height: 550px;color: black;background: transparent">
                <div id="signup-form">
                    <center><h1 style="color: red">Product Details</h1></center><br />
                    <table style="text-align: center;" border="1" width="900">
                        <tr>
                            <th width="10%">Product Name</th>
                            <th width="10%">Product Item</th>
                            <th width="10%">Brand Name</th>
                            <th width="10%">Price</th>
                            <th width="10%">Validity</th>
                            <th width="10%">Update</th>
                        </tr>
                        <tr>
                            <%
                                try {
                                    String imgid = request.getParameter("id");
                                    System.out.println("Img ID " + imgid);
                                    session.setAttribute("imgid", imgid);
                                    Connection con = Dbconnection.getConnection();
                                    Statement st = con.createStatement();
                                    ResultSet rs = st.executeQuery("select * from product where imgid='" + imgid + "'");
                                    while (rs.next()) {%>
                            <form action="update1.jsp" method="post">  
                                <input type="hidden" value="<%=imgid%>" name="imgid" />
                                <td><input type="text"name="pname" readonly="" value="<%=rs.getString("pname")%>"/></td>
                                <td><input type="text"name="pitems"  readonly=""value="<%=rs.getString("pitems")%>"/></td>
                                <td><input type="text"name="bname" readonly="" value="<%=rs.getString("bname")%>"/></td>
                                <td><input type="text"name="price" value="<%=rs.getString("price")%>"/></td>
                                <td><input type="date"name="validity" value="<%=rs.getString("validity")%>"/></td>
                                <td><input type="submit" value="Update" style="width: 100px;height: 50px;background: transparent;color: black"/></td>
                        </tr>
                        </form>
                        <% }
                            } catch (Exception e) {
                                e.printStackTrace();
                                System.out.println("Admin product edit details Page" + e.getMessage());
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


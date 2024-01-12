<%-- 
    Document   : search
    Created on : Aug 25, 2015, 12:30:30 PM
    Author     : java2
--%>

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
    <style>
        #signup-form { 
            width: 900px; 
            margin: 0 auto; 
            margin-top: 50px; 
            margin-bottom: 50px; 
            background: #fff; 
            padding: 40px; 
            border: 10px solid #f2f2f2; 
            height: 200px;
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
                    <ul>
                        <li><a href="uhome.jsp" class="active">Home</a></li>
                        <li><a href="profile.jsp">User Profile</a></li>   
                        <li><a href="search.jsp">Search</a></li>
                        <li><a href="cartdetails.jsp">Service List</a></li>
                        <li><a href="index.html">Log out</a></li>
                    </ul>
                    <div class="clear"></div>
            </div>
            <div id="black_bg" style="height: 300px;background: transparent">
                <div id="signup-form" style="">
                    <table   style="margin-left: 20px">
                        <tr>
                            <%
                                String pname = request.getParameter("focus");
                                System.out.println("Focus Value in Search view " + pname);
                                String imgid = null;
                                Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                try {
                                    con = Dbconnection.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from product where pname='" + pname + "'");
                                    while (rs.next()) {
                                        imgid = rs.getString("imgid");
                            %>
                            <td padding="0px"style="border: 0px;"><img src="Image.jsp?id=<%=rs.getString("imgid")%>" style="width: 100px;height: 100px;margin: 20px"></img>
                                <h5 style="margin-left: 50px"><%=rs.getString("pitems")%></h5>
                                <a href="addcart.jsp?<%=imgid%>" style="margin-top: 10px;margin-left: 20px;"><button style="margin-left: 10px;border-radius: 5px;width: 80px; height: 30px;font-size: 15px;background-color: window;color: black">Purchase</button></a> <br />
                            </td> 
                            <td>
                                <a href="comments.jsp?<%=rs.getString("pitems")%>,<%=pname%>">Comments</a>
                            </td>
                            <%
                                    }
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }
                            %>
                        </tr>
                    </table>
                </div>
            </div>	
            <div id="footer">
                <p>Copyright &copy; 2015-2016. <!-- Do not remove -->Designed by Rushikesh<!-- end --></p>
            </div>
        </div>
    </body>
</html>


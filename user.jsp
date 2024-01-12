<%-- 
    Document   : user
    Created on : Aug 22, 2015, 2:44:41 PM
    Author     : java2
--%>

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
            if (request.getParameter("msgg") != null) {%>
        <script>alert('Please Enter Correct Username and Password');</script>  
        <%}
                if (request.getParameter("nmsg") != null) {%>
        <script>alert('You are not Activated')</script>  
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
                    <li><a href="index.html" class="active">Home</a></li>
                    <li><a href="user.jsp">User</a></li>   
                    <li><a href="idm.jsp">IDM</a></li>
                    <li><a href="tm.jsp">TM</a></li>
                    <li><a href="cloud.jsp">Cloud Server</a></li>
                </ul>
                <div class="clear"></div>
            </div>
            <div id="black_bg" style="height: 300px;color: white;background: transparent"><br />
                <img src="images/user.png" style="float: left"/>
                <!-----start-main---->
                <div class="login-form" style="margin-top: -10px;height: 320px;">
                    <div class="head">
                        <img src="images/logo.png" alt=""/>

                    </div>
                    <form action="loginaction.jsp" method="post">
                        <li>
                            <input type="text" class="text" placeholder="USERNAME" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'USERNAME';
                                    }" name="uname"><a href="#" class=" icon user"></a>
                        </li>
                        <li>
                            <input type="password" placeholder="PASSWORD" name="pass" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Password';
                                    }"><a href="#" class=" icon lock"></a>
                        </li>
                        <div class="p-container">
                            <label class="checkbox"><a href="reg.jsp">New User</a></label>
                            <input type="hidden" value="1" name="saction" />
                            <input type="submit"  value="SIGN IN" >
                                <div class="clear"> </div>
                        </div>
                    </form>
                </div>
                <!--//End-login-form-->
            </div>	
            <div id="footer">
                <p>Copyright &copy; 2015-2016. <!-- Do not remove -->Designed by Rushikesh<!-- end --></p>
            </div>
        </div>
    </body>
</html>

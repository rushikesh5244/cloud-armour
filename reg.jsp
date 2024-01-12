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
        <style>
            input { 
                width: 60% 
            }
            form { 
                margin: 30px 0 0 0 
            }
            input, textarea { 
                background: none repeat scroll 0 0 #FFFFFF; 
                border: 1px solid #C9C9C9; 
                box-shadow: 0 1px 3px rgba(0, 0, 0, 0.15) inset, -5px -5px 0 0 #F5F5F6, 5px 5px 0 0 #F5F5F6, 5px 0 0 0 #F5F5F6, 0 5px 0 0 #F5F5F6, 5px -5px 0 0 #F5F5F6, -5px 5px 0 0 #F5F5F6; 
                color: #545658; 
                padding: 8px; 
                font-size: 14px; 
                border-radius: 2px 2px 2px 2px; 
            }
            #email{
                background: none repeat scroll 0 0 #FFFFFF; 
                border: 1px solid #C9C9C9; 
                box-shadow: 0 1px 3px rgba(0, 0, 0, 0.15) inset, -5px -5px 0 0 #F5F5F6, 5px 5px 0 0 #F5F5F6, 5px 0 0 0 #F5F5F6, 0 5px 0 0 #F5F5F6, 5px -5px 0 0 #F5F5F6, -5px 5px 0 0 #F5F5F6; 
                color: #545658; 
                padding: 8px; 
                font-size: 14px; 
                border-radius: 2px 2px 2px 2px; 
            }
            #submit { 
                background: url("images/submit_bg.gif") repeat-x scroll 0 0 transparent; 
                border: 1px solid #B7D6DF; 
                border-radius: 2px 2px 2px 2px; 
                box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1); 
                color: #437182; 
                cursor: pointer; 
                font-family: "Helvetica Neue",Helvetica,Arial,sans-serif; 
                font-size: 14px;
                font-weight: bold; 
                height: auto; 
                padding: 6px 10px; 
                text-shadow: 0 1px 0 #FFFFFF; 
                width: auto; 
            }
            #submit:hover { 
                background: url("images/submit_hover_bg.gif") repeat-x scroll 0 0 transparent; 
                border: 1px solid #9FBAC0; 
                cursor: pointer; 
            }
            #signup-form { 
                width: 510px; 
                margin: 0 auto; 
                margin-top: 50px; 
                margin-bottom: 50px; 
                background: #fff; 
                padding: 40px; 
                border: 10px solid #f2f2f2; 
                height: 520px;
            }
            #signup-icon { 
                float: right; 
                width: 48px; 
                height: 48px; 
            }
            h1 { 
                margin: 0 0 30px; 
                font-size: 24px; 
                line-height: 34px; 
            }
            .clearfix:after { 
                content: "."; 
                display: block; 
                height: 0; 
                clear: both; 
                visibility: hidden; 
            }
            .clearfix { 
                display: inline-block 
            } /* Hide from IE Mac \*/
            .clearfix { 
                display: block; 
            } /* End hide from IE Mac */
            .none { 
                display: none; 
            } /* End Clearfix _NO__DOTCOMMA__AFTER__*/

            #header { 
                margin: 0 0 30px 0; 
                border-bottom: 1px solid #efefef; 
            }
            form label { 
                display: block; 
                margin-bottom: 5px; 
                font-weight: bold; 
                font-size: 12px; 
            }
            p{
                text-align: center;
                line-height: 20px;
            }
        </style>
    </head>
    <body>
        <%
            if(request.getParameter("msg")!=null)
            {%>
            <script>alert('Registration Successfully');</script>
            <%}
            if(request.getParameter("msgg")!=null)
            {%>
            <script>alert('Registration Failed');</script>  
            <%}
        %>
        <div id="header_bg">
            <div id="logo">
                <h1><a href="#" style="color: black">CloudArmor</a></h1>
                <center>
                    <h1 style="font-size: 26px;line-height: 30px;font-family: 'Merienda One', cursive;margin-top: -50px;">Supporting Reputation-based
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
            <div id="black_bg" style="height: 600px;color: black;background: transparent">
                <form id="signup-form" action="regaction.jsp" method="post">
                    <div class="clearfix" id="header">
                        <img id="signup-icon" src="./images/signup.png" alt="" />
                        <h1 style="margin-left: 180px">Sign up Here</h1>
                    </div>
                    <p>
                        <label for="name">Your Name</label>
                        <input id="name" type="text" name="uname" value="" />
                    </p>
                    <p>
                        <label for="password">Password</label>
                        <input id="password" type="password" name="pass" value="" />
                    </p>
                   <p>
                        <label for="email">Email</label>
                        <input id="email" type="email" name="email" value="" />
                    </p>
                    <p>
                        <label for="dob">Birth Day</label>
                        <input id="dob" type="date" name="dob" value="" />
                    </p>
                    <p>
                        <label for="phone">Phone</label>
                        <input id="phone" type="text" name="phone" value="" />
                    </p>
                    <input type="hidden" value="5" name="saction" />
                    <p>
                        <label for="location">Location</label>
                        <input id="location" type="text" name="loc" value="" />
                    </p><br />
                    <p>
                        <center><button id="submit" type="submit">Submit</button></center>
                    </p>
                </form>
            </div>
            <div id="footer">
                <p>Copyright &copy; 2015-2016. <!-- Do not remove -->Designed by Rushikesh<!-- end --></p>
            </div>
        </div>
    </body>
</html>

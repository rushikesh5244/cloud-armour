<%-- 
    Document   : search
    Created on : Aug 25, 2015, 12:30:30 PM
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
    <style>
        #signup-form { 
            width: 510px; 
            margin: 0 auto; 
            margin-top: 50px; 
            margin-bottom: 50px; 
            background: #fff; 
            padding: 40px; 
            border: 10px solid #f2f2f2; 
            height: 200px;
            border-radius: 25px;
        }
        .search-box,.close-icon,.search-wrapper {
            position: relative;
            padding: 10px;
        }
        .search-box {
            width: 300px;
            border: 1px solid #ccc;
            outline: 0;
            border-radius: 15px;
            font-weight: bold;
        }
        .search-box:focus {
            box-shadow: 0 0 15px 5px #b0e0ee;
            border: 2px solid #bebede;
        }
        .close-icon {
            border:1px solid transparent;
            background-color: transparent;
            display: inline-block;
            vertical-align: middle;
            outline: 0;
            cursor: pointer;
        }
        .close-icon:after {
            content: "X";
            display: block;
            width: 15px;
            height: 15px;
            position: absolute;
            background-color: #FA9595;
            z-index:1;
            right: 35px;
            top: 0;
            bottom: 0;
            margin: auto;
            padding: 2px;
            border-radius: 50%;
            text-align: center;
            color: white;
            font-weight: normal;
            font-size: 12px;
            box-shadow: 0 0 2px #E50F0F;
            cursor: pointer;
        }
        .search-box:not(:valid) ~ .close-icon {
            display: none;
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
                <img src="images/search2.png" width="300" height="300" style="float: left;" />
                <img src="images/search3.png" width="300" height="300" style="float: right;" />
                <div id="signup-form" style="border: none">
                    <center><h1 style="font-size: 40px;font-family: Times New Roman;color: red">Cloud Armor</h1></center>
                    <center>
                        <form action="searchview.jsp" method="post" style="margin-top: -60px">
                            <input type="text" name="focus" required class="search-box" placeholder="Enter Service Model" />
                            <button class="close-icon" type="reset"></button><br /><br />
                            <input type="submit" value="Search" style="width: 120px;height: 50px;border-radius: 10px;;color: black"/>
                        </form>
                    </center>
                </div>
            </div>	
            <div id="footer">
                <p>Copyright &copy; 2015-2016. <!-- Do not remove -->Designed by Rushikesh<!-- end --></p>
            </div>
        </div>
    </body>
</html>


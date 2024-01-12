<%-- 
    Document   : Sample
    Created on : Aug 27, 2015, 12:21:05 PM
    Author     : java2
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

//            Calendar cal = Calendar.getInstance();
//            SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
//            System.out.println(sdf.format(cal.getTime()));
//            
//            Calendar cal1 = Calendar.getInstance();
//            System.out.println(sdf.format(cal1.getTime()));
            Calendar cal1 = Calendar.getInstance();
            cal1.set(17,44,22);
            Date date1 = cal1.getTime();

            //Date2
            Calendar cal2 = Calendar.getInstance();
            cal2.set(15,44,22);
            Date date2 = cal2.getTime();

            //Time Difference Calculations Begin
            long milliSec1 = date1.getTime();
            long milliSec2 = date2.getTime();

            long timeDifInMilliSec;
            if (milliSec1 >= milliSec2) {
                timeDifInMilliSec = milliSec1 - milliSec2;
            } else {
                timeDifInMilliSec = milliSec2 - milliSec1;
            }

            long timeDifSeconds = timeDifInMilliSec / 1000;
            long timeDifMinutes = timeDifInMilliSec / (60 * 1000);
            long timeDifHours = timeDifInMilliSec / (60 * 60 * 1000);
            long timeDifDays = timeDifInMilliSec / (24 * 60 * 60 * 1000);

            System.out.println("Time differences expressed in various units are given below");
            System.out.println(timeDifInMilliSec + " Milliseconds");
            System.out.println(timeDifSeconds + " Seconds");
            System.out.println(timeDifMinutes + " Minutes");
            System.out.println(timeDifHours + " Hours");
            System.out.println(timeDifDays + " Days");

        %>
    </body>
</html>

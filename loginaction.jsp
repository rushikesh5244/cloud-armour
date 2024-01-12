<%@page import="java.net.InetAddress"%>
<%@page import="com.cloudarmor.kk.action.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    String uname = request.getParameter("uname");
    String pass = request.getParameter("pass");

    int saction = Integer.parseInt(request.getParameter("saction"));
    switch (saction) {
        case 1:
            try {
                con = Dbconnection.getConnection();
                st = con.createStatement();
                rs = st.executeQuery("select * from user where email='" + uname + "' AND pass='" + pass + "'");
                if (rs.next()) {
                    if(rs.getString("status").equals("Yes"))
                    {
                        session.setAttribute("uname", rs.getString("name"));
                        session.setAttribute("email", rs.getString("email"));
                        session.setAttribute("uid", rs.getString("uid"));
                        response.sendRedirect("uhome.jsp?msg=success");
                    }
                    else
                    {
                        response.sendRedirect("user.jsp?nmsg=success");
                    }
                } else {
                    response.sendRedirect("user.jsp?msgg=failed");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            break;
        case 2:
            try {
                String idm = "IDM";
                if (idm.equalsIgnoreCase(uname) && idm.equalsIgnoreCase(pass)) {
                    response.sendRedirect("ihome.jsp?msg=success");

                } else {
                    response.sendRedirect("idm.jsp?msgg=failed");
                }

            } catch (Exception ex) {
                ex.printStackTrace();
            }
            break;
        case 3:
            try {
                String tm = "TM";
                if (tm.equalsIgnoreCase(uname) && tm.equalsIgnoreCase(pass)) {
                    response.sendRedirect("thome.jsp?msg=success");

                } else {
                    response.sendRedirect("tm.jsp?msgg=failed");
                }

            } catch (Exception ex) {
                ex.printStackTrace();
            }
            break;
        case 4:
            try {
                String cloud = "CLOUD";
                if (cloud.equalsIgnoreCase(uname) && cloud.equalsIgnoreCase(pass)) {
                    response.sendRedirect("chome.jsp?msg=success");

                } else {
                    response.sendRedirect("cloud.jsp?msgg=failed");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            break;

        default:
            response.sendRedirect("index.jsp");
    }


%>
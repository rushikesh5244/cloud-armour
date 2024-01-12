<%@page import="com.cloudarmor.kk.action.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    Statement st = null;
    Statement st1 = null;
    ResultSet rs = null;
    String[] data = request.getQueryString().split(",");
    System.out.println("data[0-]"+data[0]);
    String pitem = data[0].replace("%20"," ");
    System.out.println("data[0-1]"+pitem);
    
    try {
        con = Dbconnection.getConnection();
        st = con.createStatement();
        rs = st.executeQuery("select * from feed where status='No' AND feedback='" + pitem + "' AND uid='" + data[1] + "'");
        if (rs.next()) {
            st1 = con.createStatement();
            int i = st1.executeUpdate("update feed set status='Yes' where status='No' AND feedback='" + data[0] + "'AND uid='" + data[1] + "'");
            if (i != 0) {
                response.sendRedirect("tpfeedback.jsp?pmsg=sucess");
            }

        } else {
            response.sendRedirect("tpfeedback.jsp?msgg=failed");
        }
    } catch (Exception ex) {
        System.out.println("Exception error in Publish"+ex.getMessage());
    }

%>
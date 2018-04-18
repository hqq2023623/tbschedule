<%@page import="com.taobao.pamirs.schedule.ConsoleManager" %>
<%@page import="com.taobao.pamirs.schedule.zk.ZKManager" %>
<%@page import="java.util.Properties" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%

    Properties p = new Properties();
    p.setProperty(ZKManager.Keys.zkConnectString.toString(), request.getParameter(ZKManager.Keys.zkConnectString.toString()));
    p.setProperty(ZKManager.Keys.rootPath.toString(), request.getParameter(ZKManager.Keys.rootPath.toString()));
    p.setProperty(ZKManager.Keys.userName.toString(), request.getParameter(ZKManager.Keys.userName.toString()));
    p.setProperty(ZKManager.Keys.password.toString(), request.getParameter(ZKManager.Keys.password.toString()));
    p.setProperty(ZKManager.Keys.zkSessionTimeout.toString(), request.getParameter(ZKManager.Keys.zkSessionTimeout.toString()));
    try {
        ConsoleManager.saveConfigInfo(p);
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("config.jsp?error=" + e.getMessage());
    }
%>
<script>
    if (parent != null) {
        parent.location.href = "index.jsp?manager=true";
    } else {
        window.location.href = "index.jsp?manager=true";
    }
</script>

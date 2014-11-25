<%@page import="me.rkg.model.User"%>
<%
    User details = (User) request.getAttribute("data");
%>
<table>
    <tr>
        <td>Name </td>
        <td><%=details.getName() %></td>
    </tr>
    <tr>
        <td>Company</td>
        <td><%=details.getUrl() %></td>
    </tr>
</table>
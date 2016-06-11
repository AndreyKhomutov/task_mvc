<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@page session="true" %>

<div class="alert alert-success" role="alert" style="margin-top:300px;">
    <%--<div class="container">--%>
    <%--This is the First Page Body Tile Section. <br>--%>
    <%--<a href="${pageContext.servletContext.contextPath}/page2">Go to Second Page</a>--%>
    <%--<br>--%>
    <%----%>
    <%--<div align="center">--%>
    <%--<h2>Spring MVC Form Validation Demo - Login Form</h2>--%>
    <%--<table border="0" width="90%">--%>
    <%--<form:form action="page1" commandName="loginForm">--%>
    <%--<tr>--%>
    <%--<td align="left" width="20%">Login </td>--%>
    <%--<td align="left" width="40%"><form:input path="login" size="30"/></td>--%>
    <%--<td align="left"><form:errors path="login" cssClass="error"/></td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
    <%--<td>Password: </td>--%>
    <%--<td><form:password path="password" size="30"/></td>--%>
    <%--<td><form:errors path="password" cssClass="error"/></td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
    <%--<td></td>--%>
    <%--<td align="center"><input type="submit" value="Login"/></td>--%>

    <%--<td></td>--%>
    <%--</tr>--%>
    <%--</form:form>--%>
    <%--</table>--%>
    <%--</div>--%>

    <%--</div>--%>

    <c:if test="${pageContext.request.userPrincipal.name != null}">
    <h2>Welcome : ${pageContext.request.userPrincipal.name} <br>
        <a href="${pageContext.servletContext.contextPath}/page2">Go to Second Page</a>
        </c:if>

        <c:if test="${pageContext.request.userPrincipal.name == null}">
        <h1>Login page</h1>
        <p>You need login for full functions
            </c:if>

</div>


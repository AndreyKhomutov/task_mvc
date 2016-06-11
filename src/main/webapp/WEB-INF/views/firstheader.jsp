<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@page session="true" %>


<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Main</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <c:if test="${pageContext.request.userPrincipal.name == null}">
                <form action="<c:url value='login'/>" method="post" class="navbar-form navbar-right">
                    <div class="form-group">
                        <input type="text" name="username" class="form-control">
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" class="form-control">
                    </div>
                    <button type="submit" value="Login" class="btn btn-success">Enter</button>
                    <input type="hidden" name="<c:out value="${_csrf.parameterName}"/>"
                           value="<c:out value="${_csrf.token}"/>"/>
                </form>
            </c:if>
            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <form action="/logout" method="post" class="navbar-form navbar-right">
                    <div class="form-group">
                        <h4><p class="text-success"> Welcome <br> ${pageContext.request.userPrincipal.name} !</h4>
                        </p>
                    </div>
                    <div class="form-group">
                        <input type="submit" value="Logout" class="btn btn-success">
                        <security:csrfInput/>
                    </div>
                </form>
            </c:if>
            <c:if test="${not empty param.login_error}">
  <span style="color: red; ">
    Your login attempt was not successful, try again.<br/><br/>
    Reason: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>
  </span>
            </c:if>
        </div>
    </div>
</nav>
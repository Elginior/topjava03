<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">

        <a href="meals">
            <div class="navbar-header navbar-brand"><fmt:message key="app.title"/></div>
        </a>

        <div class="collapse navbar-collapse">
            <form class="navbar-form navbar-right">
                <sec:authorize access="isAuthenticated()">
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <a class="btn btn-info" role="button" href="users"><fmt:message key="users.title"/></a>
                    </sec:authorize>
                    <a class="btn btn-primary" role="button" href="logout">Logout</a>
                </sec:authorize>
            </form>
        </div>
    </div>
</div>
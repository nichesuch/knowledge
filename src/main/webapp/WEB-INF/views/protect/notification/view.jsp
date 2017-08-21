<%@page pageEncoding="UTF-8" isELIgnored="false" session="false" errorPage="/WEB-INF/views/commons/errors/jsp_error.jsp"%>
<%@page import="org.support.project.web.util.JspUtil"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<% JspUtil jspUtil = new JspUtil(request, pageContext); %>


<c:import url="/WEB-INF/views/commons/layout/layoutMain.jsp">

<c:param name="PARAM_HEAD">
<!-- build:css(src/main/webapp) css/notification-detail.css -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/knowledge-list.css" />
<!-- endbuild -->
</c:param>

<c:param name="PARAM_SCRIPTS">
<!-- build:js(src/main/webapp) js/page-notification-detail.js -->
<script type="text/javascript" src="<%= request.getContextPath() %>/js/notification-detail.js"></script>
<!-- endbuild -->
</c:param>


<c:param name="PARAM_CONTENT">
<h4 class="title">
<span class="dispKnowledgeId">#<%= jspUtil.out("no") %></span>
<%= jspUtil.out("title") %>
</h4>

<nav>
    <ul class="pager">
        <li class="previous">
            <a href="<%= request.getContextPath() %>/protect.notification/previous/<%= jspUtil.out("no") %><c:if test="${!empty all}">?all=true</c:if>">
                <span aria-hidden="true">&larr;</span><%= jspUtil.label("label.previous") %>
            </a>
        </li>
        <li>
            <a href="<%= request.getContextPath() %>/protect.notification/list<c:if test="${!empty all}">?all=true</c:if>" >
                <i class="fa fa-list-ul"></i>&nbsp;<%= jspUtil.label("label.backlist") %>
            </a>
        </li>
        <li class="next">
            <a href="<%= request.getContextPath() %>/protect.notification/next/<%= jspUtil.out("no") %><c:if test="${!empty all}">?all=true</c:if>">
                <%= jspUtil.label("label.next") %> <span aria-hidden="true">&rarr;</span>
            </a>
        </li>
    </ul>
</nav>

<pre id="content">
<%= jspUtil.out("content") %>
</pre>

<nav>
    <ul class="pager">
        <li class="previous">
            <a href="<%= request.getContextPath() %>/protect.notification/previous/<%= jspUtil.out("no") %><c:if test="${!empty all}">?all=true</c:if>">
                <span aria-hidden="true">&larr;</span><%= jspUtil.label("label.previous") %>
            </a>
        </li>
        <li>
            <a href="<%= request.getContextPath() %>/protect.notification/list<c:if test="${!empty all}">?all=true</c:if>" >
                <i class="fa fa-list-ul"></i>&nbsp;<%= jspUtil.label("label.backlist") %>
            </a>
        </li>
        <li class="next">
            <a href="<%= request.getContextPath() %>/protect.notification/next/<%= jspUtil.out("no") %><c:if test="${!empty all}">?all=true</c:if>">
                <%= jspUtil.label("label.next") %> <span aria-hidden="true">&rarr;</span>
            </a>
        </li>
    </ul>
</nav>


</c:param>

</c:import>


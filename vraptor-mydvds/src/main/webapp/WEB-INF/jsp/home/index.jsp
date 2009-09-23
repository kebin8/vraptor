
<%@ include file="../../../header.jsp" %> 

<c:if test="${not empty param.language}">
	<fmt:setLocale value="${param.language}" scope="session"/>
</c:if>

<c:if test="${not empty errors}">
	<div id="error-box">
	<h1><fmt:message key="errors"/></h1>
	<hr />
	<c:forEach var="error" items="${errors}">
   		<h3><fmt:message key="${error.category}"/> - (${error.message})</h3>
   	</c:forEach>
	</div>
</c:if>

<div class="blue-box">
<h1><fmt:message key="change_language"/></h1>
<hr/>
<a href="?language=de"><img src="images/de.gif" border="0"/></a> | 
<a href="?language=en"><img src="images/en.gif" border="0"/></a> | 
<a href="?language=pt_br"><img src="images/br.gif" border="0"/></a>

</div>

<br/><br/>

<div class="blue-box">

<h1><fmt:message key="welcome"/></h1>

<hr/>

<w:form action="/home/login" type="table" method="post" border="0" name="loginForm">
	<w:text name="login" />
	<w:password name="password" />
	<w:submit id="submit" value="send"/>
</w:form>
</div>

<br/><br/>

<div class="blue-box">

<c:if test="${not empty user}">
	<h1>${user.name}: <fmt:message key="user_added"/></h1>
</c:if>

<c:if test="${empty user}">
	<h1><fmt:message key="new_user_message"/></h1>
</c:if>

<hr/>

<w:form action="/users" type="table" name="registerForm" method="post">
	<w:text name="user.name" label="name" />
	<w:text name="user.login" label="login" />
	<w:password name="user.password" label="password" />
	<w:submit value="send" />
</w:form>
</div>

<%@ include file="../../../footer.jsp" %> 
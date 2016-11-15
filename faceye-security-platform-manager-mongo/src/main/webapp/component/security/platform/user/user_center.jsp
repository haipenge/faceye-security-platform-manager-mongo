<%@ include file="/component/core/taglib/taglib.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/component/security/platform/user/user.css"/>" />
<script type="text/javascript" src="<c:url value="/js/component/security/platform/user/user.js"/>"></script>
<div class="page-head">
	<h2>
		<fmt:message key="security.platform.user.manager"></fmt:message>
		<a class="btn btn-primary" href="<c:url value="/security/platform/user/input"/>"> <fmt:message
				key="security.platform.user.add"></fmt:message>
		</a>
		<a href="<c:url value="/security/platform/user/init"/>" class="btn btn-success">Init User System</a>
	</h2>
</div>
<div class="cl-mcont">
	<div class="block-flat">
		<div class="content">
			<div classs="table-responsive">
				<table class="table table-bordered table-hover">
				  <thead>
					<tr>
						<th><fmt:message key='security.platform.user.id'></fmt:message></th>
						<td><fmt:message key='security.platform.user.name'></fmt:message></th>
						<th><fmt:message key='security.platform.user.email'></fmt:message></th>
						<th><fmt:message key='security.platform.user.enabled'></fmt:message></th>
						<th><fmt:message key='security.platform.user.accountExpired'></fmt:message></th>
						<th><fmt:message key='security.platform.user.accountLocked'></fmt:message></th>
						<th><fmt:message key='security.platform.user.credentialsExpired'></fmt:message></th>
						<th><fmt:message key='security.platform.user.roles'></fmt:message></th>
						<!--@generate-entity-jsp-property-desc@-->
						<th><fmt:message key="security.platform.user.auth"></fmt:message></th>
						<th><fmt:message key="global.edit"></fmt:message></th>
						<th><fmt:message key="global.remove"></fmt:message></th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${page.content}" var="user">
						<tr>
							<td>${user.id}</td>
							<td>${user.username}</td>
							<td>${user.email}</td>
							<td><f:boolean value="${user.enabled}"/></td>
							<td><f:boolean value="${user.accountExpired}"/></td>
							<td><f:boolean value="${user.accountLocked}"/></td>
							<td><f:boolean value="${user.credentialsExpired}"/></td>
							<td></td>
							<!--@generate-entity-jsp-property-value@-->
							<td><a href="<c:url value="/security/platform/user/prepareAuthRoles/${user.id}"/>"> <fmt:message
										key="security.platform.user.auth"></fmt:message>
							</a></td>
							<td><a href="<c:url value="/security/platform/user/edit/${user.id}"/>"> <fmt:message key="global.edit"></fmt:message>
							</a></td>
							<td><a href="<c:url value="/security/platform/user/remove/${user.id}"/>"> <fmt:message key="global.remove"></fmt:message>
							</a></td>
						<tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<f:page page="${page}" url="/security/platform/user/home" params="<%=request.getParameterMap()%>" />
		</div>
	</div>
</div>

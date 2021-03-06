<%@ include file="/component/core/taglib/taglib.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/component/security/platform/role/role.css"/>" />
<script type="text/javascript" src="<c:url value="/js/component/security/platform/role/role.js"/>"></script>

<div class="page-head">
	<h2>
		<fmt:message key="security.platform.role.manager"></fmt:message>
		<a class="btn btn-primary" href="<c:url value="/security/platform/role/input"/>"> <fmt:message key="security.platform.role.add"></fmt:message>
		</a>
	</h2>
</div>

<div class="cl-mcont">
	<!-- 
	<div class="header">
		<h2>
			<fmt:message key="security.platform.role.manager"></fmt:message>
		</h2>

		<a class="btn btn-default" href="<c:url value="/security/platform/role/input"/>"> <fmt:message key="security.platform.role.add"></fmt:message>
		</a>
	</div>
	 -->
	<div class="block-flat">
		<div class="content">
			<div classs="table-responsive">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th><fmt:message key='security.platform.role.name'></fmt:message></th>
							<th><fmt:message key="security.platform.role.auth"></fmt:message></th>
							<th><fmt:message key="security.platform.menu.auth"></fmt:message></th>
							<!--@generate-entity-jsp-property-desc@-->
							<th><fmt:message key="global.edit"></fmt:message></th>
							<th><fmt:message key="global.remove"></fmt:message></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${page.content}" var="role">
							<tr>
								<td>${role.name}</td>
								<td><a href="/security/platform/role/prepareAuthResources/${role.id}"><fmt:message key="security.platform.role.auth"></fmt:message></a></td>
								<td><a href="/security/platform/menu/prepareAuthMenus/${role.id}"><fmt:message key="security.platform.menu.auth"></fmt:message></a></td>
								<!--@generate-entity-jsp-property-value@-->
								<td><a href="<c:url value="/security/platform/role/edit/${role.id}"/>"> <fmt:message key="global.edit"></fmt:message>
								</a></td>
								<td><a href="<c:url value="/security/platform/role/remove/${role.id}"/>"> <fmt:message key="global.remove"></fmt:message>
								</a></td>
							<tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<f:page page="${page}" url="/security/platform/role/home" params="<%=request.getParameterMap()%>" />
		</div>
	</div>
</div>

<%@ include file="/component/core/taglib/taglib.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/component/security/platform/resource/resource.css"/>" />
<script type="text/javascript" src="<c:url value="/js/component/security/platform/resource/resource.js"/>"></script>

<div class="page-head">
	<h2>
		<fmt:message key="security.platform.resource.manager"></fmt:message>
		<a class="btn btn-primary" href="<c:url value="/security/platform/resource/input"/>"> <fmt:message
				key="security.platform.resource.add"></fmt:message>
		</a>
	</h2>
</div>
<div class="cl-mcont">
	<div class="block-flat">
		<div class="content">
			<div classs="table-responsive">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th><fmt:message key='security.platform.resource.name'></fmt:message></th>
							<th><fmt:message key='security.platform.resource.url'></fmt:message></th>
							<th><fmt:message key='security.platform.resource.roles'></fmt:message></th>
							<!--@generate-entity-jsp-property-desc@-->
							<th><fmt:message key="global.edit"></fmt:message></th>
							<th><fmt:message key="global.remove"></fmt:message></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${page.content}" var="resource">
							<tr>
								<td>${resource.name}</td>
								<td>${resource.url}</td>
								<td>--</td>
								<!--@generate-entity-jsp-property-value@-->
								<td><a href="<c:url value="/security/platform/resource/edit/${resource.id}"/>"> <fmt:message key="global.edit"></fmt:message>
								</a></td>
								<td><a href="<c:url value="/security/platform/resource/remove/${resource.id}"/>"> <fmt:message
											key="global.remove"></fmt:message>
								</a></td>
							<tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<f:page page="${page}" url="/security/platform/resource/home" params="<%=request.getParameterMap()%>" />
		</div>
	</div>
</div>
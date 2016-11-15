<%@ include file="/component/core/taglib/taglib.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/component/security/platform/menu/menu.css"/>" />
<script type="text/javascript" src="<c:url value="/js/component/security/platform/menu/menu.js"/>"></script>

<div class="block-flat">
	<div class="header">
		<h3>
			<c:choose>
				<c:when test="${empty menu.id}">
					<fmt:message key="security.platform.menu.add"></fmt:message>
				</c:when>
				<c:otherwise>
					<fmt:message key="security.platform.menu.edit"></fmt:message>
				</c:otherwise>
			</c:choose>
		</h3>
	</div>
	<div class="content">
		<form action="<c:url value="/security/platform/menu/save"/>" method="post" role="form" class="form-horizontal">
			<input type="hidden" name="id" value="${menu.id}" />
			<fieldset>
				<div class="form-group">
					<label class="col-md-2 control-label" for="name"> <fmt:message key="security.platform.menu.name"></fmt:message>
					</label>
					<div class="col-md-6">
						<input type="text" name="name" value="${menu.name}" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="url"> <fmt:message key="security.platform.menu.url"></fmt:message>
					</label>
					<div class="col-md-6">
						<input type="text" name="url" value="${menu.resourceId}" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="type"> <fmt:message key="security.platform.menu.type"></fmt:message>
					</label>
					<div class="col-md-6">
						<select name="type" class="form-control">
							<option value="1" <c:if test="${menu.type eq '1' }">selected</c:if>>URL</option>
							<option value="2" <c:if test="${menu.type eq '2' }">selected</c:if>>Ajax</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="parent"> <fmt:message key="security.platform.menu.parent"></fmt:message>
					</label>
					<div class="col-md-6">
						<select name="parentId" class="form-control">
							<option>Select Root</option>
							<c:forEach items="${ roots}" var="root">
								<option value="${root.id}" <c:if test="${root.id eq menu.parentId }">selected</c:if>>${root.name}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<!--@generate-entity-jsp-property-update@-->

				<div class="form-group">
					<div class="col-md-8 pull-right">
						<button type="submit" class="btn btn-success">
							<fmt:message key="global.submit.save"></fmt:message>
						</button>
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</div>

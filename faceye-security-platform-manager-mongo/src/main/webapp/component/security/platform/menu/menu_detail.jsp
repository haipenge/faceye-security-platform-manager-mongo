<%@ include file="/components/core/taglib/taglib.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/component/security/platform/menu/menu.css"/>" />
<script type="text/javascript" src="<c:url value="/js/component/security/platform/menu/menu.js"/>"></script>
<div class="panel panel-primary">
	<div class="panel-heading">
		<div class="panel-title">
			<fmt:message key="security.platform.menu.detail"></fmt:message>
		</div>
	</div>
	<div class="panel-body">
			<fieldset>
								<div class="form-group">
					<label class="col-md-4 control-label" for="menu">
					  <fmt:message key="security.platform.menu.name"></fmt:message>
					 </label>
					<div class="col-md-4">
						${menu.name}
					</div>
				</div>
								<div class="form-group">
					<label class="col-md-4 control-label" for="menu">
					  <fmt:message key="security.platform.menu.url"></fmt:message>
					 </label>
					<div class="col-md-4">
						${menu.url}
					</div>
				</div>
								<div class="form-group">
					<label class="col-md-4 control-label" for="menu">
					  <fmt:message key="security.platform.menu.type"></fmt:message>
					 </label>
					<div class="col-md-4">
						${menu.type}
					</div>
				</div>
				<!--@generate-entity-jsp-property-detail@-->
				
				
				
			</fieldset>
	</div>
</div>
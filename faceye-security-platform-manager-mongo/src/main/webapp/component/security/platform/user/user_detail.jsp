<%@ include file="/components/core/taglib/taglib.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/component/security/platform/user/user.css"/>" />
<script type="text/javascript" src="<c:url value="/js/component/security/platform/user/user.js"/>"></script>
<div class="panel panel-primary">
	<div class="panel-heading">
		<div class="panel-title">
			<fmt:message key="security.platform.user.detail"></fmt:message>
		</div>
	</div>
	<div class="panel-body">
			<fieldset>
								<div class="form-group">
					<label class="col-md-4 control-label" for="user">
					  <fmt:message key="security.platform.user.id"></fmt:message>
					 </label>
					<div class="col-md-4">
						${user.id}
					</div>
				</div>
								<div class="form-group">
					<label class="col-md-4 control-label" for="user">
					  <fmt:message key="security.platform.user.name"></fmt:message>
					 </label>
					<div class="col-md-4">
						${user.name}
					</div>
				</div>
								<div class="form-group">
					<label class="col-md-4 control-label" for="user">
					  <fmt:message key="security.platform.user.password"></fmt:message>
					 </label>
					<div class="col-md-4">
						${user.password}
					</div>
				</div>
								<div class="form-group">
					<label class="col-md-4 control-label" for="user">
					  <fmt:message key="security.platform.user.email"></fmt:message>
					 </label>
					<div class="col-md-4">
						${user.email}
					</div>
				</div>
								<div class="form-group">
					<label class="col-md-4 control-label" for="user">
					  <fmt:message key="security.platform.user.enabled"></fmt:message>
					 </label>
					<div class="col-md-4">
						${user.enabled}
					</div>
				</div>
								<div class="form-group">
					<label class="col-md-4 control-label" for="user">
					  <fmt:message key="security.platform.user.accountExpired"></fmt:message>
					 </label>
					<div class="col-md-4">
						${user.accountExpired}
					</div>
				</div>
								<div class="form-group">
					<label class="col-md-4 control-label" for="user">
					  <fmt:message key="security.platform.user.accountLocked"></fmt:message>
					 </label>
					<div class="col-md-4">
						${user.accountLocked}
					</div>
				</div>
								<div class="form-group">
					<label class="col-md-4 control-label" for="user">
					  <fmt:message key="security.platform.user.credentialsExpired"></fmt:message>
					 </label>
					<div class="col-md-4">
						${user.credentialsExpired}
					</div>
				</div>
								<div class="form-group">
					<label class="col-md-4 control-label" for="user">
					  <fmt:message key="security.platform.user.roles"></fmt:message>
					 </label>
					<div class="col-md-4">
						${user.roles}
					</div>
				</div>
				<!--@generate-entity-jsp-property-detail@-->
				
				
				
				
				
				
				
				
				
			</fieldset>
	</div>
</div>
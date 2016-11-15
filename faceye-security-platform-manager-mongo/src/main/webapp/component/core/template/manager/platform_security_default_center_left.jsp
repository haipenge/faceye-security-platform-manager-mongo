<%@ include file="/component/core/taglib/taglib.jsp"%>
<li><a href="#"><i class="fa fa-home"></i><span><fmt:message key="platform.security.manager"></fmt:message></span></a>
						<ul class="sub-menu">
							<li class="<%=JspUtil.isActive(request, "/security/platform/user")%>"><a href="<c:url value="/security/platform/user/home"/>"><fmt:message
										key="security.platform.user.manager"></fmt:message></a></li>
							<li class="<%=JspUtil.isActive(request, "/security/platform/role")%>"><a href="<c:url value="/security/platform/role/home"/>"><fmt:message
										key="security.platform.role.manager"></fmt:message></a></li>
							<li class="<%=JspUtil.isActive(request, "/security/platform/resource")%>"><a href="<c:url value="/security/platform/resource/home"/>"><fmt:message
										key="security.platform.resource.manager"></fmt:message></a></li>
							<li class="<%=JspUtil.isActive(request, "/security/platform/menu")%>"><a href="/security/platform/menu/home"><fmt:message
										key="security.platform.menu.manager"></fmt:message></a></li>
						</ul></li>
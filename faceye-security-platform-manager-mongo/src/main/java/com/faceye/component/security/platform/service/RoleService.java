package com.faceye.component.security.platform.service;

import java.util.Collection;

import org.springframework.security.access.ConfigAttribute;

import com.faceye.component.security.platform.entity.Role;
import com.faceye.feature.service.BaseService;

public interface RoleService extends BaseService<Role,Long>{

	/**
	 * 取得所有的授权信息m
	 * @todo
	 * @return
	 * @author:@haipenge
	 * haipenge@gmail.com
	 * 2014年6月27日
	 */
	public Collection<ConfigAttribute> getAllConfigAttributes();
	
	public void saveRoleAuthResources(Long roleId,Long[] resourceIds);
	
	public Role getRoleByName(String name);
}/**@generate-service-source@**/

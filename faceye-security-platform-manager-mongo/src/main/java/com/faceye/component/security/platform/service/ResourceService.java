package com.faceye.component.security.platform.service;

import com.faceye.component.security.platform.entity.Resource;
import com.faceye.feature.service.BaseService;

public interface ResourceService extends BaseService<Resource,Long>{

	public Resource getResourceByUrl(String url);
	
	public Resource getResourceByMenuId(Long menuId);
	
}/**@generate-service-source@**/

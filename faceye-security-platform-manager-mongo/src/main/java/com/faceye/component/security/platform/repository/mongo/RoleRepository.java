package com.faceye.component.security.platform.repository.mongo;

import org.springframework.stereotype.Repository;

import com.faceye.component.security.platform.entity.Role;
import com.faceye.feature.repository.mongo.BaseMongoRepository;
/**
 * Role 实体DAO
 * @author @haipenge 
 * haipenge@gmail.com
*  Create Date:2014年5月20日
 */
@Repository("platform-roleRepository")
public interface RoleRepository extends BaseMongoRepository<Role,Long> {
	
	public Role getRoleByName(String name);
}/**@generate-repository-source@**/

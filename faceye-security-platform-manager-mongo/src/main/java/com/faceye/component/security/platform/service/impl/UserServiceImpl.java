package com.faceye.component.security.platform.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.faceye.component.security.platform.entity.Role;
import com.faceye.component.security.platform.entity.User;
import com.faceye.component.security.platform.repository.mongo.RoleRepository;
import com.faceye.component.security.platform.repository.mongo.UserRepository;
import com.faceye.component.security.platform.service.UserService;
import com.faceye.component.security.platform.util.SecurityUtil;
import com.faceye.feature.service.impl.BaseMongoServiceImpl;

@Service("platform-userService")
public class UserServiceImpl extends BaseMongoServiceImpl<User, Long, UserRepository> implements UserService, UserDetailsService {

	@Autowired
	public UserServiceImpl(UserRepository dao) {
		super(dao);
	}

	@Autowired
	private RoleRepository roleRepository = null;

	/**
	 * 加载用户,支持邮件和用户名登陆
	 */
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = null;
		if (StringUtils.isNotEmpty(username)) {
			if (StringUtils.indexOf(username, "@") != -1) {
				user = this.dao.getUserByEmail(username);
			} else {
				user = this.dao.getUserByUsername(username);
			}
		}
		return user;
	}

	@Override
	public void saveUserAuthRoles(Long userId, Long[] roleIds) {
		User user = this.dao.findOne(userId);
		List<Role> roles = new ArrayList<Role>();
		// user.getRoles().clear();
		if (roleIds != null && roleIds.length > 0) {
			for (Long roleId : roleIds) {
				Role role = this.roleRepository.findOne(roleId);
				roles.add(role);
			}
			user.setRoles(roles);
		}
		this.save(user);
	}

	@Override
	public User getUserByUsername(String username) {
		if(StringUtils.isNotEmpty(username)){
			username=username.toLowerCase();
			return this.dao.getUserByUsername(username);
		}
		return null;
	}

	@Override
	public User getUserByEmail(String email) {
		if(StringUtils.isNotEmpty(email)){
			email=email.toLowerCase();
		}
		return this.dao.getUserByEmail(email);
	}

	@Override
	public User getCurrentLoginUser() {
		User user=null;
		String username=SecurityUtil.getCurrentUserName();
		if(StringUtils.isNotEmpty(username)){
			user=this.getUserByUsername(username);
		}
		return user;
	}
}
/**@generate-service-source@**/

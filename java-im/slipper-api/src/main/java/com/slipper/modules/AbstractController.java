package com.slipper.modules;

import com.slipper.service.user.entity.UserEntity;
import com.slipper.shiro.utils.ShiroUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Controller公共组件
 *
 * @author chen
 * @email 123456@qq.com
 * @date 2023-08-30 00:00:00
 */
public abstract class AbstractController {
	protected Logger logger = LoggerFactory.getLogger(getClass());

	protected UserEntity getUser() {
		return ShiroUtils.getUser();
	}

	protected Long getUserId() {
		return ShiroUtils.getUserId();
	}
}

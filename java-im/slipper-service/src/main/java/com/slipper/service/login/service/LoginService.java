package com.slipper.service.login.service;

import com.slipper.service.login.vo.LoginVo;
import com.slipper.service.token.entity.TokenEntity;

/**
 * 登录
 *
 * @author chen
 * @email 123456@qq.com
 * @date 2023-08-30 00:00:00
 */
public interface LoginService {

    /**
     * 登入
     * @param loginVo 账号密码
     * @return
     */
    TokenEntity login(LoginVo loginVo);

    /**
     * 注册
     * @param loginVo 账号密码
     * @return
     */
    void register(LoginVo loginVo);

    /**
     * 登出
     * @param userId
     */
    void logout(Long userId);

}

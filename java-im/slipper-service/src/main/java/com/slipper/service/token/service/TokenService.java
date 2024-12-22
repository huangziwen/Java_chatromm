package com.slipper.service.token.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.slipper.service.token.entity.TokenEntity;

/**
 * Token
 *
 * @author chen
 * @email 123456@qq.com
 * @date 2023-08-30 00:00:00
 */
public interface TokenService extends IService<TokenEntity> {

    TokenEntity createToken (Long userId);

    void destroyToken (Long userId);

    TokenEntity queryByToken (String token);

    TokenEntity queryByUserId (Long userId);

}


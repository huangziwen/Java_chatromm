package com.slipper.service.conversation.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.slipper.service.conversation.dto.ConversationDto;
import com.slipper.service.conversation.entity.ConversationEntity;

import java.util.List;

/**
 * 聊天会话
 *
 * @author chen
 * @email 123456@qq.com
 * @date 2023-08-30 00:00:00
 */
public interface ConversationService extends IService<ConversationEntity> {

    /**
     * 查询会话列表
     * @param userId
     * @return
     */
    List<ConversationDto> queryList(Long userId);

    /**
     * 新增聊天会话
     * @param userId
     * @param toUserId
     */
    ConversationDto create(Long userId, Long toUserId);

}


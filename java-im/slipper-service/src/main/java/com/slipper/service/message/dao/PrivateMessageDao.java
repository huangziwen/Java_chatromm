package com.slipper.service.message.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.slipper.service.conversation.dto.ConversationDto;
import com.slipper.service.conversation.entity.ConversationEntity;
import com.slipper.service.message.entity.PrivateMessageEntity;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 私聊消息
 *
 * @author chen
 * @email 123456@qq.com
 * @date 2023-08-30 00:00:00
 */
@Mapper
public interface PrivateMessageDao extends BaseMapper<PrivateMessageEntity> {

}

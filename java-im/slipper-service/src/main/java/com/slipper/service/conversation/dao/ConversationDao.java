package com.slipper.service.conversation.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.slipper.service.conversation.dto.ConversationDto;
import com.slipper.service.conversation.entity.ConversationEntity;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 聊天会话
 *
 * @author chen
 * @email 123456@qq.com
 * @date 2023-08-30 00:00:00
 */
@Mapper
public interface ConversationDao extends BaseMapper<ConversationEntity> {
    /**
     * 查询会话列表
     * @param userId
     * @return
     */
	List<ConversationDto> queryList(@Param("userId") Long userId);

    /**
     * ID查询会话
     * @param id
     * @return
     */
    ConversationDto queryById(@Param("id") Long id);
}

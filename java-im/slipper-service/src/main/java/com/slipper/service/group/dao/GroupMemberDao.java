package com.slipper.service.group.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.slipper.service.group.entity.GroupMemberEntity;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface GroupMemberDao extends BaseMapper<GroupMemberEntity> {
    List<Long> getMemberIdsByGroupId(@Param("groupId") Long groupId);

    void removeByGroupIdAndUserId(@Param("groupId") Long groupId, @Param("userId") Long userId);
}

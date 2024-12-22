package com.slipper.service.group.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.slipper.service.group.entity.GroupEntity;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface GroupDao extends BaseMapper<GroupEntity> {
    List<GroupEntity> getGroupsByUserId(@Param("userId") Long userId);
}

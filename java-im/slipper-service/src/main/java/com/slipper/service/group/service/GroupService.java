package com.slipper.service.group.service;

import com.slipper.service.group.entity.GroupEntity;

import java.util.List;

public interface GroupService {

    // 创建群组
    void createGroup(GroupEntity groupEntity);

    // 根据用户 ID 查询用户加入的群组列表
    List<GroupEntity> getGroupsByUserId(Long userId);

    // 群组消息广播
    void broadcastMessage(Long groupId, String message);
}

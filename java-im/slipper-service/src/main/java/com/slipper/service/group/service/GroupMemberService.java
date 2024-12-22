package com.slipper.service.group.service;

import com.slipper.service.group.entity.GroupMemberEntity;

public interface GroupMemberService {

    // 添加用户到群组
    void addMemberToGroup(GroupMemberEntity groupMemberEntity);

    // 移除群组中的用户
    void removeMemberFromGroup(Long groupId, Long userId);
}

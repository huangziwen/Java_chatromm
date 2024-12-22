package com.slipper.service.group.service.impl;

import com.slipper.service.group.dao.GroupMemberDao;
import com.slipper.service.group.entity.GroupMemberEntity;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("groupMemberService")
public class GroupMemberServiceImpl implements GroupMemberService {

    @Resource
    private GroupMemberDao groupMemberDao;

    @Override
    public void addMemberToGroup(GroupMemberEntity groupMemberEntity) {
        groupMemberDao.insert(groupMemberEntity);
    }

    @Override
    public void removeMemberFromGroup(Long groupId, Long userId) {
        groupMemberDao.removeByGroupIdAndUserId(groupId, userId);
    }
}

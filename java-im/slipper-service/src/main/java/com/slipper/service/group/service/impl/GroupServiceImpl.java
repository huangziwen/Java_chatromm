package com.slipper.service.group.service.impl;

import com.slipper.service.group.dao.GroupDao;
import com.slipper.service.group.dao.GroupMemberDao;
import com.slipper.service.group.entity.GroupEntity;
import com.slipper.netty.utils.WebSocketUsers;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("groupService")
public class GroupServiceImpl implements GroupService {

    @Resource
    private GroupDao groupDao;

    @Resource
    private GroupMemberDao groupMemberDao;

    @Override
    public void createGroup(GroupEntity groupEntity) {
        groupDao.insert(groupEntity);
    }

    @Override
    public List<GroupEntity> getGroupsByUserId(Long userId) {
        return groupDao.getGroupsByUserId(userId);
    }

    @Override
    public void broadcastMessage(Long groupId, String message) {
        List<Long> memberIds = groupMemberDao.getMemberIdsByGroupId(groupId);
        for (Long memberId : memberIds) {
            WebSocketUsers.sendMessageToUser(String.valueOf(memberId), message);
        }
    }
}

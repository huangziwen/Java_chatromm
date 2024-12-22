package com.slipper.service.group.controller;

import com.slipper.common.utils.R;
import com.slipper.service.group.service.GroupService;
import com.slipper.service.group.service.GroupMemberService;
import com.slipper.service.group.entity.GroupEntity;
import com.slipper.service.group.entity.GroupMemberEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/group")
public class GroupController {

    @Resource
    private GroupService groupService;

    @Resource
    private GroupMemberService groupMemberService;

    /**
     * 创建群组
     */
    @PostMapping("/create")
    public R createGroup(@RequestBody GroupEntity groupEntity) {
        groupService.createGroup(groupEntity);
        return R.ok("群组创建成功");
    }

    /**
     * 获取用户加入的群组列表
     */
    @GetMapping("/list")
    public R listGroups(@RequestParam("userId") Long userId) {
        List<GroupEntity> groups = groupService.getGroupsByUserId(userId);
        return R.ok().put("groups", groups);
    }

    /**
     * 加入群组
     */
    @PostMapping("/join")
    public R joinGroup(@RequestBody GroupMemberEntity groupMemberEntity) {
        groupMemberService.addMemberToGroup(groupMemberEntity);
        return R.ok("成功加入群组");
    }

    /**
     * 群组消息广播
     */
    @PostMapping("/broadcast")
    public R broadcastMessage(@RequestParam("groupId") Long groupId, @RequestParam("message") String message) {
        groupService.broadcastMessage(groupId, message);
        return R.ok("消息已广播");
    }
}

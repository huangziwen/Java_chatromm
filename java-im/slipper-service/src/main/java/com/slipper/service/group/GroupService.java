public interface GroupService {
    void createGroup(GroupDto groupDto);
    void addMember(GroupMemberDto groupMemberDto);
    void removeMember(GroupMemberDto groupMemberDto);
}

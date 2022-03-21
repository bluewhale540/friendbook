package com.example.potd5.services;

import com.example.potd5.model.Friend;
import java.util.List;

public interface FriendService {
    public List<Friend> getAllFriends();

    public Friend getFriendByID(int id);

    public void addFriend(Friend friend);

    public void deleteFriend(int id);
}

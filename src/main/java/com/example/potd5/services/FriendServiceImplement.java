package com.example.potd5.services;

import com.example.potd5.model.Friend;
import com.example.potd5.repository.FriendRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class FriendServiceImplement implements FriendService {
    @Autowired
    FriendRepository friendRepository;

    @Override
    public List<Friend> getAllFriends() {
        return (List<Friend>) friendRepository.findAll();
    }

    @Override
    public Friend getFriendByID(int id) {
        return friendRepository.findFriendById(id);
    }

    @Override
    public void addFriend(Friend friend) {
        friendRepository.addFriendToDB(friend.getId(), friend.getFirstname(), friend.getLastname(), friend.getMajor(), friend.getYear());
    }

    @Override
    public void deleteFriend(int id) {
        friendRepository.deleteFriendById(id);
    }
}

package com.example.potd5.repository;
import com.example.potd5.model.Friend;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface FriendRepository extends CrudRepository<Friend, Integer> {
    @Query(value = "SELECT * FROM friend", nativeQuery = true)
    List<Friend> findAll();

    @Query(value = "SELECT * FROM friend WHERE id = ?1", nativeQuery = true)
    Friend findFriendById(int id);

    @Modifying
    @Query(value = "DELETE FROM friend WHERE id = ?1", nativeQuery = true)
    void deleteFriendById(int id);

    @Modifying
    @Query(value = "INSERT INTO friend VALUES(?1, ?2, ?3, ?4, ?5) " +
            "ON DUPLICATE KEY UPDATE firstname=?2, lastname=?3, major=?4, year=?5", nativeQuery = true)
    void addFriendToDB(int id, String first, String last, String major, int year);
}

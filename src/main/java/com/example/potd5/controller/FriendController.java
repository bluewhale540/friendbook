package com.example.potd5.controller;

import java.util.List;

import com.example.potd5.model.Friend;
import com.example.potd5.services.FriendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/friend")
public class FriendController {
    @Autowired
    FriendService friendService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView list() {
        ModelAndView model = new ModelAndView("friend_list");
        List<Friend> friendList = friendService.getAllFriends();

        model.addObject("friendList", friendList);

        return model;
    }

    @RequestMapping(value="/addFriend/", method=RequestMethod.GET)
    public ModelAndView addFriend() {
        ModelAndView model = new ModelAndView();
        Friend friend = new Friend();

        model.addObject("friendForm", friend);
        model.setViewName("friend_form");

        return model;
    }

    @RequestMapping(value="/editFriend/{id}", method=RequestMethod.GET)
    public ModelAndView editFriend(@PathVariable int id) {
        ModelAndView model = new ModelAndView();
        Friend friend = friendService.getFriendByID(id);

        model.addObject("friendForm", friend);
        model.setViewName("friend_form");

        return model;
    }

    @RequestMapping(value="/addFriend", method=RequestMethod.POST)
    public ModelAndView add(@ModelAttribute("friendForm") Friend friend) {

        friendService.addFriend(friend);
        return new ModelAndView("redirect:/friend/list");
    }

    @RequestMapping(value="/deleteFriend/{id}", method=RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {

        friendService.deleteFriend(id);
        return new ModelAndView("redirect:/friend/list");
    }
}

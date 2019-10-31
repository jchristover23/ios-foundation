//
//  FindPartners.swift
//  A Project
//
//  Created by Jeremy Christover on 26/08/19.
//  Copyright © 2019 Jeremy Christover. All rights reserved.
//

import Foundation

struct findPartners {
    var findPartnersName: String
    var findPartnersStatus: String
    var profilePicture: String
    var partnerFriends: Int
    var partnerRating: Float
    var isFriend: Bool
    var tags: [String]
    var about: String
}

var partners = [
    findPartners(findPartnersName: "Broderick Barton", findPartnersStatus: "Offline ❌", profilePicture: "user1.jpg", partnerFriends: 120, partnerRating: 4.7, isFriend: false, tags: ["Football", "Game", "Sports", "School", "Diving"], about: "Actor / Mushroom Forager / SCUBA Certified Diver / Scientific American Subscriber / Dog Mom / Captain Marvel / Generally Stoked lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet"),
    findPartners(findPartnersName: "Zane Lynch", findPartnersStatus: "Online ✅", profilePicture: "user2.jpg", partnerFriends: 532, partnerRating: 4.6, isFriend: false, tags: ["Football", "Game", "Sports", "School", "Diving"], about: "Actor / Mushroom Forager / SCUBA Certified Diver / Scientific American Subscriber / Dog Mom / Captain Marvel / Generally Stoked lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet"),
    findPartners(findPartnersName: "Glorial Krause", findPartnersStatus: "Online ✅", profilePicture: "user3.jpg", partnerFriends: 123, partnerRating: 5.0, isFriend: false, tags: ["Football", "Game", "Sports", "School", "Diving"], about: "Actor / Mushroom Forager / SCUBA Certified Diver / Scientific American Subscriber / Dog Mom / Captain Marvel / Generally Stoked lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet"),
    findPartners(findPartnersName: "Alex Goheen", findPartnersStatus: "Online ✅", profilePicture: "user4.jpg", partnerFriends: 564, partnerRating: 4.9, isFriend: true, tags: ["Football", "Game", "Sports", "School", "Diving"], about: "Actor / Mushroom Forager / SCUBA Certified Diver / Scientific American Subscriber / Dog Mom / Captain Marvel / Generally Stoked lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet"),
    findPartners(findPartnersName: "Tameika Pearl", findPartnersStatus: "Offline ❌", profilePicture: "user5.jpg", partnerFriends: 1324, partnerRating: 3.4, isFriend: false, tags: ["Football", "Game", "Sports", "School", "Diving"], about: "Actor / Mushroom Forager / SCUBA Certified Diver / Scientific American Subscriber / Dog Mom / Captain Marvel / Generally Stoked lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet"),
    findPartners(findPartnersName: "Alden Cantrell", findPartnersStatus: "Online ✅", profilePicture: "user6.jpg", partnerFriends: 765, partnerRating: 4.1, isFriend: true, tags: ["Football", "Game", "Sports", "School", "Diving"], about: "Actor / Mushroom Forager / SCUBA Certified Diver / Scientific American Subscriber / Dog Mom / Captain Marvel / Generally Stoked lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet"),
    findPartners(findPartnersName: "Kenny Duffy", findPartnersStatus: "Offline ❌", profilePicture: "user7.jpg", partnerFriends: 536, partnerRating: 4.5, isFriend: false, tags: ["Football", "Game", "Sports", "School", "Diving"], about: "Actor / Mushroom Forager / SCUBA Certified Diver / Scientific American Subscriber / Dog Mom / Captain Marvel / Generally Stoked lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet"),
    findPartners(findPartnersName: "Lauryn Paul", findPartnersStatus: "Online ✅", profilePicture: "user8.jpg", partnerFriends: 923, partnerRating: 4.4, isFriend: false, tags: ["Football", "Game", "Sports", "School", "Diving"], about: "Actor / Mushroom Forager / SCUBA Certified Diver / Scientific American Subscriber / Dog Mom / Captain Marvel / Generally Stoked lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet")
]

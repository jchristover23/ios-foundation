//
//  Profile.swift
//  A Project
//
//  Created by Jeremy Christover on 02/09/19.
//  Copyright © 2019 Jeremy Christover. All rights reserved.
//

import Foundation

struct Profile {
    var profileSettingsName: String
    var profileSettingsDetail: String
}

let settingList = [
    Profile(profileSettingsName: "Name", profileSettingsDetail: "User Name"),
    Profile(profileSettingsName: "Email", profileSettingsDetail: "User Email"),
    Profile(profileSettingsName: "Tags/Interest", profileSettingsDetail: "User Tags")
]

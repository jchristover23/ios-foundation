//
//  ProfileVC.swift
//  A Project
//
//  Created by Jeremy Christover on 02/09/19.
//  Copyright © 2019 Jeremy Christover. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Profile"
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "profileCell", for: indexPath) as? ProfileCell{
            let profileSetting = settingList[indexPath.row]
            cell.profileSettingsTitleLabel.text = profileSetting.profileSettingsName
            cell.profileSettingsDetailLabel.text = profileSetting.profileSettingsDetail
            return cell
        } else {
            return ProfileCell()
        }
    }
}


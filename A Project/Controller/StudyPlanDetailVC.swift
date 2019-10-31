//
//  StudyPlanDetailVC.swift
//  A Project
//
//  Created by Jeremy Christover on 28/08/19.
//  Copyright © 2019 Jeremy Christover. All rights reserved.
//

import UIKit

class StudyPlanDetailVC: UIViewController {
    
//    let list = [
//        StudyPlan(studyPlanName: "Places", studyPlanImage: "city.jpg"),
//        StudyPlan(studyPlanName: "Education", studyPlanImage: "education.jpg"),
//        StudyPlan(studyPlanName: "Technology", studyPlanImage: "technology.jpg"),
//        StudyPlan(studyPlanName: "Sport", studyPlanImage: "sport.jpg")
//    ]
    
    var indexnya: Int = 0
    @IBOutlet weak var planDetailTitleLabel: UILabel!
    @IBOutlet weak var planDetailImage: UIImageView!
    @IBOutlet weak var StartPlanButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (list[indexnya].isAdded) {
            setAdded()
        }
        else {
            setBelomAdd()
        }
        planDetailTitleLabel!.text = list[indexnya].studyPlanName
        planDetailImage!.image = UIImage(named: list[indexnya].studyPlanImage)
    }
    
    @IBAction func addPlan(_ sender: UIButton) {
        if !list[indexnya].isAdded {
            let alert = UIAlertController(title: "Are you sure want to start this plan?", message: "In this plan you will learn about \(list[indexnya].studyPlanName) in 7 days", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {action in
                let anotheralert = UIAlertController(title: "Success!", message: "Successfully added this plan to your account", preferredStyle: .alert)
                anotheralert.addAction(UIAlertAction(title: "Close", style: .default, handler: nil))
                self.present(anotheralert, animated: true)
                list[self.indexnya].isAdded = true
                self.setAdded()
            }))
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            
            self.present(alert, animated: true)
        }
    }
    
    func setBelomAdd() {
        StartPlanButton.titleLabel?.font = UIFont(name: "System Regular", size: 15.0)
        StartPlanButton.setTitle("Start plan", for: .normal)
        StartPlanButton.backgroundColor = UIColor(red: 0, green: 122/255, blue: 1, alpha: 1)
        StartPlanButton.setTitleColor(.white, for: .normal)
        StartPlanButton.layer.borderWidth = 0
        StartPlanButton.layer.cornerRadius = 20
        StartPlanButton.isEnabled = true
    }
    
    func setAdded() {
        StartPlanButton.titleLabel?.font = UIFont(name: "System Regular", size: 15.0)
        StartPlanButton.setTitle("Plan already added", for: .disabled)
        StartPlanButton.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
        StartPlanButton.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: .disabled)
        StartPlanButton.layer.borderWidth = 0
        StartPlanButton.layer.cornerRadius = 20
        StartPlanButton.isEnabled = false
    }
}

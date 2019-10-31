//
//  StudyPlanVC.swift
//  A Project
//
//  Created by Jeremy Christover on 28/08/19.
//  Copyright © 2019 Jeremy Christover. All rights reserved.
//

import UIKit

class StudyPlanVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var planSelected = 0
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    var plans = [StudyPlan]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Study Plan"
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "planCell", for: indexPath) as? StudyPlanCell {
            let li = list[indexPath.row]
            cell.planImage.image = UIImage(named: li.studyPlanImage)
            cell.planTitle.text = li.studyPlanName
            cell.layer.cornerRadius = 8
            return cell
        } else {
        return StudyPlanCell()
    }
}
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var findPlansSegmented: UICollectionView!
    @IBAction func segmentedControlIndexChanged(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            findPlansSegmented.isHidden = false
        case 1:
            findPlansSegmented.isHidden = true
        default:
            findPlansSegmented.isHidden = false
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let li = list[indexPath.row]
        planSelected = indexPath.row
        performSegue(withIdentifier: "planDetail", sender: li)
        //print(planSelected)
        //print(list[0].studyPlanName)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is StudyPlanDetailVC
        {
            let destvc = segue.destination as? StudyPlanDetailVC
            destvc?.indexnya = planSelected
        }
    }
}

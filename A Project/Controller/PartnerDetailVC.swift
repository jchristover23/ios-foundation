//
//  PartnerDetailVC.swift
//  A Project
//
//  Created by Farrel Anshary on 29/08/19.
//  Copyright © 2019 Jeremy Christover. All rights reserved.
//

import UIKit

class PartnerDetailVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var friendsAmount: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var userInfoView: UIView!
    @IBOutlet weak var aboutView: UIView!
    @IBOutlet weak var aboutLabel: UILabel!
    @IBOutlet weak var AddButton: UIButton!
    @IBOutlet weak var tagsViewGede: UIView!
    @IBOutlet weak var tagsCollection: UICollectionView!
    
    var indexnya: Int = 0
    
    override func viewDidLoad() {
        profilePicture.layer.cornerRadius = 148 / 2
        super.viewDidLoad()
        profilePicture.image = UIImage(named: partners[indexnya].profilePicture)
        userName.text = partners[indexnya].findPartnersName
        friendsAmount.text = String(partners[indexnya].partnerFriends)
        rating.text = String(partners[indexnya].partnerRating)
        
        for button in buttons {
            button.layer.cornerRadius = button.frame.height / 2
        }
        
        if (partners[indexnya].isFriend) {
            setRemoveButton()
        }
        else {
            setAddButton()
        }
        
        giveShadow(view: userInfoView)
        giveShadow(view: aboutView)
        giveShadow(view: tagsViewGede)
        
        aboutLabel.text = partners[indexnya].about
        
        tagsCollection.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func giveShadow(view: UIView) {
        view.layer.shadowOffset = CGSize(width: 0, height: 6)
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
        view.layer.shadowRadius = 15
        view.layer.cornerRadius = 20
    }
    
    override func viewWillLayoutSubviews() {
        aboutLabel.sizeToFit()
    }
    
    @IBAction func addFriend(_ sender: UIButton) {
        if (partners[indexnya].isFriend) {
            let alert = UIAlertController(title: "Unfriend", message: "Are you sure want to remove \(partners[indexnya].findPartnersName)?", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "Yes", style: .destructive, handler: {action in
                self.setAddButton()
                partners[self.indexnya].isFriend = false
            }))
            self.present(alert, animated: true)
        }
        else {
            setRemoveButton()
            partners[indexnya].isFriend = true
        }
    }
    
    func setAddButton() {
        AddButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20.0)
        AddButton.setTitle("+ Add", for: .normal)
        AddButton.backgroundColor = UIColor(red: 0, green: 122/255, blue: 1, alpha: 1)
        AddButton.setTitleColor(.white, for: .normal)
        AddButton.layer.borderWidth = 0
    }
    
    func setRemoveButton() {
        AddButton.setTitle("Remove", for: .normal)
        AddButton.titleLabel?.font = UIFont(name: "System Regular", size: 20.0)
        AddButton.setTitleColor(UIColor.init(red: 255/255, green: 59/255, blue: 48/255, alpha: 1), for: .normal)
        AddButton.backgroundColor = .white
        AddButton.layer.borderWidth = 1
        AddButton.layer.borderColor = UIColor(red: 255/255, green: 59/255, blue: 48/255, alpha: 1).cgColor
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return partners[indexnya].tags.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "partnersDetailCell", for: indexPath) as! PartnersDetailCell
        let tag = partners[indexnya].tags[indexPath.row]
        cell.tagsView.layer.cornerRadius = 12
        cell.tagsLabel.text = tag
        return cell
    }
    
    
}

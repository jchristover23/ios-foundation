//
//  FunVC.swift
//  A Project
//
//  Created by Jeremy Christover on 02/09/19.
//  Copyright © 2019 Jeremy Christover. All rights reserved.
//

import UIKit

class FunVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Fun"
        collectionView.dataSource = self
        collectionView.delegate = self
        self.collectionView.isUserInteractionEnabled = true
    }

    var funSelected = 0
    
    let funList = [
        Fun(funTitle: "Movies", funImage: "movies.jpg"),
        Fun(funTitle: "Music", funImage: "music.jpg"),
        Fun(funTitle: "Games", funImage: "games.jpg")
    ]
    
    var fun = [Fun]()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return funList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "funCell", for: indexPath) as? FunCell {
            let li = funList[indexPath.row]
            cell.funImageView.image = UIImage(named: li.funImage)
            cell.funTitleLabel.text = li.funTitle
            cell.funImageView.layer.cornerRadius = 15
            return cell
        } else {
            return FunCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        _ = funList[indexPath.row]
        funSelected = indexPath.row
        //performSegue(withIdentifier: "funCell", sender: li)
        print(funSelected)
        //print(list[0].studyPlanName)
        if funSelected == 0 {
            if let url = URL(string: "https://www.google.com") {
                UIApplication.shared.open(url)
            }
        }

        if funSelected == 1 {
            if let url = URL(string: "https://lyricstraining.com") {
                UIApplication.shared.open(url)
            }
        }

        if funSelected == 2 {
            if let url = URL(string: "https://apps.apple.com/us/app/scrabble/id501724085") {
                UIApplication.shared.open(url)
            }
        }
    }
}

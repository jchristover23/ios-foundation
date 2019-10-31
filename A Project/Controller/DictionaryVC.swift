//
//  DictionaryVC.swift
//  A Project
//
//  Created by Farrel Anshary on 01/09/19.
//  Copyright © 2019 Jeremy Christover. All rights reserved.
//

import UIKit

class DictionaryVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var dictionaryView: UIView!
    @IBOutlet weak var synonimsCollection: UICollectionView!
    @IBOutlet weak var judulTitle: UILabel!
    @IBOutlet weak var pronunTitle: UILabel!
    @IBOutlet weak var artiTitle: UILabel!
    @IBOutlet weak var synonimTitle: UILabel!
    
    @IBOutlet weak var historyView: UIView!
    @IBOutlet weak var historyTable: UITableView!
    
    @IBOutlet var categoryImages: [UIImageView]!
    @IBOutlet var categoryView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Dictionary"
        synonimsCollection.dataSource = self
        historyTable.dataSource = self
        
        giveShadow(view: dictionaryView)
        giveShadow(view: historyView)
        giveShadow(view: categoryView)
        
        for image in categoryImages {
            image.layer.cornerRadius = 15
        }
        
        artiKata()
    }
    
    override func viewWillLayoutSubviews() {
        artiTitle.sizeToFit()
    }
    
    func giveShadow(view: UIView) {
        view.layer.shadowOffset = CGSize(width: 0, height: 6)
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
        view.layer.shadowRadius = 15
        view.layer.cornerRadius = 20
    }
    
    func artiKata() {
        judulTitle.text = listKata[0].kata
        pronunTitle.text = listKata[0].pengucapan
        artiTitle.text = listKata[0].arti
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listKata[0].sinonim.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dictionaryCell", for: indexPath) as! SynonimsCell
        cell.synonimsTitle.text = listKata[0].sinonim[indexPath.row]
        cell.synonimsView.layer.cornerRadius = 15
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listHis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell", for: indexPath) as! historyTableCell
        let kata = listHis[indexPath.row]
        cell.historyLabel.text = kata.word + " / " + kata.pengucapan + " / " + kata.arti
        return cell
    }

}

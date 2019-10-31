//
//  FindPartnersVC.swift
//  A Project
//
//  Created by Jeremy Christover on 26/08/19.
//  Copyright © 2019 Jeremy Christover. All rights reserved.
//

import UIKit

class FindPartnersVC: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchResultsUpdating {
    
    let searchController = UISearchController(searchResultsController: nil)
    var filteredName = [findPartners]()
    var personSelected = 0
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Find Partners"
        tableView.dataSource = self
        tableView.delegate = self
        filteredName = partners
        
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        tableView.tableHeaderView = searchController.searchBar
        searchController.searchBar.searchBarStyle = .minimal
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "findPartnersCell")
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        if searchController.searchBar.text! == "" {
            filteredName = partners
        } else {
            // Filter the results
            filteredName = partners.filter { $0.findPartnersName.lowercased().contains(searchController.searchBar.text!.lowercased()) }
        }
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return partners.count
         return self.filteredName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "findPartnersCell", for: indexPath) as? FindPartnersCell {
//            let partner = partners[indexPath.row]
//            cell.findPartnersNameLabel.text = partner.findPartnersName
//            cell.findPartnersImageView.image = UIImage(named: partner.findPartnersImage)
//            return cell
//        } else {
//            return FindPartnersCell()
//        }
//    }
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "findPartnersCell")
        cell.textLabel?.text = self.filteredName[indexPath.row].findPartnersName
        cell.detailTextLabel?.text = self.filteredName[indexPath.row].findPartnersStatus

        //cell.detailTextLabel?.text = self.filteredName[indexPath.row].findPartnersImage
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        personSelected = indexPath.row
        let person = partners[personSelected]
        performSegue(withIdentifier: "userDetail", sender: person)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is PartnerDetailVC {
            let destvc = segue.destination as? PartnerDetailVC
            destvc?.indexnya = personSelected
        }
    }
}

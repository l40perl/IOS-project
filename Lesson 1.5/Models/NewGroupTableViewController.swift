//
//  NewGroupTableViewController.swift
//  Lesson 1.5
//
//  Created by MacBook on 30.03.2021.
//

import UIKit

class NewGroupTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var GroupsList = [
        "Еда на дом",
        "Школа ремонта",
        "Marvel Studio",
    ]

    var avatarsGroupList: [UIImage?] = [
        UIImage(named: "group1"),
        UIImage(named: "group2"),
        UIImage(named: "group3"),
       
    ]
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return GroupsList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddGroup", for: indexPath)  as! NewGroupTableViewCell

        cell.nameNewGroupLabel.text = GroupsList[indexPath.row]
        cell.avatarNewGroupImageView.image = avatarsGroupList[indexPath.row]

        return cell
    }
    
}

//
//  GroupTableViewController.swift
//  Lesson 1.5
//
//  Created by MacBook on 29.03.2021.
//

import UIKit

class GroupTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var myGroupsList: [String] = ["Едим дома"]
    var avatarsMyGroupList: [UIImage?] = [UIImage(named: "group1")]

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return myGroupsList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupsCell", for: indexPath) as! GroupTableViewCell
        
        
        cell.nameGroupLabel.text = myGroupsList[indexPath.row]
        cell.avatarGroupImageView.image = avatarsMyGroupList[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            myGroupsList.remove(at: indexPath.row)
            avatarsMyGroupList.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    @IBAction func addNewGroup(segue:UIStoryboardSegue) {
   
        if segue.identifier == "AddGroup"{
          
            guard let newGroupFromController = segue.source as? NewGroupTableViewController else { return }
         
            if let indexPath = newGroupFromController.tableView.indexPathForSelectedRow {
             
                let nameGroup = newGroupFromController.GroupsList[indexPath.row]
                let avatarGroup = newGroupFromController.avatarsGroupList[indexPath.row]
                
            
                guard !myGroupsList.contains(nameGroup) else { return }
                myGroupsList.append(nameGroup)
                avatarsMyGroupList.append(avatarGroup)
                
           
                tableView.reloadData()
            }

        }
    }

}

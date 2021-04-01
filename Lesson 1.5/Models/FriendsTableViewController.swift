//
//  FriendsTableViewController.swift
//  Lesson 1.5
//
//  Created by MacBook on 29.03.2021.
//

import UIKit

class FriendsTableViewController: UIViewController {
    var friends = ["Василий", "Анатолий", "Борис"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath) as! FriendTableViewCell
        let friend = friends[indexPath.row]
        cell.titleLabel.text = friend
        
        return cell
    }

}


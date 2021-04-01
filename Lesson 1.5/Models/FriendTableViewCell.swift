//
//  FriendTableViewCell.swift
//  Lesson 1.5
//
//  Created by MacBook on 29.03.2021.
//

import UIKit

class FriendTableViewCell: UITableViewCell {


    @IBOutlet weak var avatarFriendImageView: UIImageView!

    @IBOutlet weak var nameFriendLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    


}

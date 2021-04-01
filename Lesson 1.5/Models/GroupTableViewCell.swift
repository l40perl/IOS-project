//
//  GroupTableViewCell.swift
//  Lesson 1.5
//
//  Created by MacBook on 29.03.2021.
//

import UIKit

class GroupTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarGroupImageView: UIImageView!
    @IBOutlet weak var nameGroupLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

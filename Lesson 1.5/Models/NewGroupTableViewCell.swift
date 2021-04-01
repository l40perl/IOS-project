//
//  NewGroupTableViewCell.swift
//  Lesson 1.5
//
//  Created by MacBook on 30.03.2021.
//

import UIKit

class NewGroupTableViewCell: UITableViewCell {

    @IBOutlet weak var nameNewGroupLabel: UILabel!
    @IBOutlet weak var avatarNewGroupImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  SecondTableViewCell.swift
//  didSelectRowAtUsingObject
//
//  Created by Mac on 02/05/23.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    @IBOutlet weak var firstName: UILabel!
    
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var city: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

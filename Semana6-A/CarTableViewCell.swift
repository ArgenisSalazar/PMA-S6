//
//  CarTableViewCell.swift
//  Semana6-A
//
//  Created by Mac21 on 20/04/24.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgprofile: UIImageView!
    
    @IBOutlet weak var lblname: UILabel!
    
    @IBOutlet weak var imgpost: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

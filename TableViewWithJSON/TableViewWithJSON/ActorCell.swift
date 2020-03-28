//
//  ActorCell.swift
//  TableViewWithJSON
//
//  Created by Naresh Nallamsetty on 23/02/20.
//  Copyright © 2020 Axiom. All rights reserved.
//

import UIKit

class ActorCell: UITableViewCell {
    
    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var DOBLbl: UILabel!
    @IBOutlet var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}


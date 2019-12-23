//
//  TableViewCell.swift
//  Segment TableView
//
//  Created by Fahim Rahman on 23/12/19.
//  Copyright © 2019 Fahim Rahman. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

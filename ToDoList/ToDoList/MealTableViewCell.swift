//
//  MealTableViewCell.swift
//  ToDoList
//
//  Created by Gabriel Arreola on 10/20/16.
//  Copyright © 2016 Gabriel Arreola. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    
    // MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

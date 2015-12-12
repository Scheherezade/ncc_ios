//
//  MyCustomCell.swift
//  customCellTest
//
//  Created by shunsukeshimada on 2015/12/05.
//  Copyright © 2015年 shunsukeshimada. All rights reserved.
//

import UIKit

class MyCustomCell: UITableViewCell {
    
    @IBOutlet var column1: UILabel?
    @IBOutlet var column2: UILabel?
    @IBOutlet var column3: UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

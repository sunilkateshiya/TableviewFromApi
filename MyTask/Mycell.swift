//
//  Mycell.swift
//  MyTask
//
//  Created by Rahul Panchal on 09/12/17.
//  Copyright © 2017 Rahul Panchal. All rights reserved.
//

import UIKit

class Mycell: UITableViewCell {

    @IBOutlet weak var Img: UIImageView!
    @IBOutlet weak var Title: UILabel!
    @IBOutlet weak var Description: UILabel!
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

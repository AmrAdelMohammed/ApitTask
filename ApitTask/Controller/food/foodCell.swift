//
//  foodCell.swift
//  ApitTask
//
//  Created by Amr on 10/2/18.
//  Copyright © 2018 Amr. All rights reserved.
//

import UIKit

class foodCell: UITableViewCell {

    @IBOutlet weak var IDlbl: UILabel!
    @IBOutlet weak var mealName: UILabel!
    @IBOutlet weak var MealCat: UILabel!
    
    @IBOutlet weak var Area: UILabel!
    @IBOutlet weak var strInstructions: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  excelCell.swift
//  ApitTask
//
//  Created by Amr on 10/1/18.
//  Copyright © 2018 Amr. All rights reserved.
//

import UIKit

class excelCell: UITableViewCell {

    @IBOutlet weak var keyLbl: UILabel!
    @IBOutlet weak var ACTION_USERLbl: UILabel!
    @IBOutlet weak var ACTION_TAKENLbl: UILabel!
    @IBOutlet weak var ACTION_NOTELbl: UILabel!
    @IBOutlet weak var ACTION_DATETIMELbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  DataByHospitalCell.swift
//  CareTogether
//
//  Created by CodigoHeinHtet on 31/03/2020.
//  Copyright © 2020 HEINHTET. All rights reserved.
//

import UIKit

class DataByHospitalCell: UITableViewCell {
    @IBOutlet weak var lbHospitalName: UILabel!
    @IBOutlet weak var lbCount: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
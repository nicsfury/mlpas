//
//  ViewArticleListCompleteTableViewCell.swift
//  APML Suvidha
//
//  Created by Nishant Gupta on 27/03/18.
//  Copyright © 2018 Interactive Bees. All rights reserved.
//

import Foundation
import UIKit

class ViewArticleListCompleteTableViewCell:UITableViewCell{
    @IBOutlet weak var itemNameLbl: UILabel!
    @IBOutlet weak var enterValueTextField: UITextField!
    @IBOutlet weak var qantityLbl: UILabel!
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var minusBtn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

//
//  FinalReviewTableViewController.swift
//  APML Suvidha
//
//  Created by Nishant Gupta on 29/03/18.
//  Copyright © 2018 Interactive Bees. All rights reserved.
//

import UIKit

class FinalReviewTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 50
        case 1:
            return 90
        case 2:
            return 84
        case 3:
            return 42
        case 4:
            return 64
        case 5:
            return 67
        case 6:
            return 70
        case 7:
            return 0
        case 8:
            return 0
        case 9:
            return 0
        case 10:
            return 50
        default:
            break
        }
        
        return 250
    }

   

   

}

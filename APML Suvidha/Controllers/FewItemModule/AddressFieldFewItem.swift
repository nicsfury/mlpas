//
//  AddressFieldFewItem.swift
//  APML Suvidha
//
//  Created by Nishant Gupta on 05/03/18.
//  Copyright © 2018 Interactive Bees. All rights reserved.
//

import UIKit

class AddressFieldFewItem: UIViewController{
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        let statusBar: UIView = UIApplication.shared.value(forKey: "statusBar") as! UIView
        statusBar.isHidden = true
    }
    
    @IBAction func backClickedBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func nextClikedBtn(_ sender: Any) {
        let PickUpDateVC = PickUpDateFewItem.instantiate(fromAppStoryboard: .FewItemStoryBoardMain)
        self.navigationController?.pushViewController(PickUpDateVC, animated: true)
    }
    
    @IBAction func addressFieldClikedBtn(_ sender: Any) {
        switch (sender as AnyObject).tag {
        case 1:
            let PickUpAddressVC = PickUpAddressFewItem.instantiate(fromAppStoryboard: .FewItemStoryBoardMain)
            self.navigationController?.pushViewController(PickUpAddressVC, animated: true)
            break
        case 2:
            let DestinationAddressVC = DestinationAddressFewItem.instantiate(fromAppStoryboard: .FewItemStoryBoardMain)
            self.navigationController?.pushViewController(DestinationAddressVC, animated: true)
            break
        default:
            break
        }
    }
}

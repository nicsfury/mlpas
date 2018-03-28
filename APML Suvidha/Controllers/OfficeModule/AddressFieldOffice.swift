//
//  AddressFieldOffice.swift
//  APML Suvidha
//
//  Created by Nishant Gupta on 05/03/18.
//  Copyright © 2018 Interactive Bees. All rights reserved.
//

import UIKit

class AddressFieldOffice: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        let statusBar: UIView = UIApplication.shared.value(forKey: "statusBar") as! UIView
        statusBar.isHidden = true
    }
    @IBAction func backClcikedBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func nextClickedBtn(_ sender: Any) {
        let SurveyDateVC = SurveyDateOffice.instantiate(fromAppStoryboard: .OfficeStoryboardMain)
        self.navigationController?.pushViewController(SurveyDateVC, animated: true)
    }
    
    @IBAction func addressClickedBtn(_ sender: Any) {
        switch (sender as AnyObject).tag {
        case 1:
            let pickUpLocationVC = PickUpAddressOffice.instantiate(fromAppStoryboard: .OfficeStoryboardMain)
            self.navigationController?.pushViewController(pickUpLocationVC, animated: true)
            break
        case 2:
            let destinationLocationVC = DestinationAddressOffice.instantiate(fromAppStoryboard: .OfficeStoryboardMain)
            self.navigationController?.pushViewController(destinationLocationVC, animated: true)
            break
        default:
            break
        }
    }
}

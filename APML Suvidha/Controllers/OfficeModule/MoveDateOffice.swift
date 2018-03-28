//
//  MoveDateOffice.swift
//  APML Suvidha
//
//  Created by Nishant Gupta on 05/03/18.
//  Copyright © 2018 Interactive Bees. All rights reserved.
//

import UIKit
class MoveDateOffice: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true )
        let statusBar: UIView = UIApplication.shared.value(forKey: "statusBar") as! UIView
        statusBar.isHidden = true
    }
    
    @IBAction func backClickedBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func moveDateClickedBtn(_ sender: Any) {
     
        let AddressOfficeVC = AddressFieldOffice.instantiate(fromAppStoryboard: .OfficeStoryboardMain)
        self.navigationController?.pushViewController(AddressOfficeVC, animated: true)
    }
}


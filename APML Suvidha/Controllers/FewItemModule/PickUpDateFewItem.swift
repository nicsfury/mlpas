//
//  PickUpDateFewItem.swift
//  APML Suvidha
//
//  Created by Nishant Gupta on 05/03/18.
//  Copyright © 2018 Interactive Bees. All rights reserved.
//

import UIKit

class PickUpDateFewItem: UIViewController{
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        let statusBar: UIView = UIApplication.shared.value(forKey: "statusBar") as! UIView
        statusBar.isHidden = true
    }
    
    @IBAction func backClickedBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func nextClikedBtn(_ sender: Any) {
        let SubmitStepVC = SubmitStepFewItem.instantiate(fromAppStoryboard: .FewItemStoryBoardMain)
        self.navigationController?.pushViewController(SubmitStepVC, animated: true)
    }
    
    
    
}

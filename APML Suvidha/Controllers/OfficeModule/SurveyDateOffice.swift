//
//  SurveyDateOffice.swift
//  APML Suvidha
//
//  Created by Nishant Gupta on 05/03/18.
//  Copyright © 2018 Interactive Bees. All rights reserved.
//

import UIKit

class SurveyDateOffice: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        let statusBar: UIView = UIApplication.shared.value(forKey: "statusBar") as! UIView
        statusBar.isHidden = true
    }
    
    @IBAction func backCLickedBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func surveyDateClickedBtn(_ sender: Any) {
        let submitStepVC = SubmitStepOffice.instantiate(fromAppStoryboard: .OfficeStoryboardMain)
        self.navigationController?.pushViewController(submitStepVC, animated: true)
    }
  
}

//
//  PrivacyPolicy.swift
//  APML Suvidha
//
//  Created by Nishant Gupta on 15/03/18.
//  Copyright © 2018 Interactive Bees. All rights reserved.
//

import Foundation
import UIKit

class PrivacyPolicy: UIViewController{
    
    @IBOutlet weak var webview: UIWebView!
    override func viewWillAppear(_ animated: Bool) {
        let statusBar: UIView = UIApplication.shared.value(forKey: "statusBar") as! UIView
        statusBar.isHidden = true
    }
    override func viewDidLoad() {
        
    }
    func setupWebview(){
        

    }
}

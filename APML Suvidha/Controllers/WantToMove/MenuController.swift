//
//  MenuController.swift
//  APML Suvidha
//
//  Created by Nishant Gupta on 20/02/18.
//  Copyright © 2018 Interactive Bees. All rights reserved.
//

import UIKit

class MenuController: UIViewController {
    @IBOutlet weak var userImg: UIImageView!
    
    var menuItem = ["Order History","Profile","Transaction History","Track Shipment","Customer Support","Refer and Earn","FAQs","Offer and Discount","Feedback","About Us","Services","T&C"]
    var menusubItem = ["View your full order history","Go to your Profile","See full transaction history","Check the current status","Get instant help","Join our referral program","Faq's","Get latest offers and discount","Submit your feedback","Know who we are","Find what all we offer","Term & Condition"]
    override func viewDidLoad() {
        super.viewDidLoad()
        userImg.layer.masksToBounds = true
        userImg.layer.cornerRadius = userImg.frame.size.width/2;
        
    }
    
    
   
}

extension MenuController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Cell: MenuCell = tableView.dequeueReusableCell(withIdentifier: "MenuCell") as! MenuCell
        Cell.nameLbl.text = menuItem[indexPath.row]
        Cell.subnameLbl.text = menusubItem[indexPath.row]
        return Cell
        
    }
}

extension MenuController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let orderListing = RAMAnimatedTabBarController.instantiate(fromAppStoryboard: .OrderListAndDetailsMain)
            self.navigationController?.pushViewController(orderListing, animated: true)
        case 1:
            let profileVC = Profile.instantiate(fromAppStoryboard: .HelpAndSupportMain)
            self.navigationController?.pushViewController(profileVC, animated: true)
        case 2:
            let TransactionHistoryVC = TransactionHistory.instantiate(fromAppStoryboard: .HelpAndSupportMain)
            self.navigationController?.pushViewController(TransactionHistoryVC, animated: true)
        case 3:
            break
        case 4:
            let CustomSupportVC = HelpAndSupport.instantiate(fromAppStoryboard: .HelpAndSupportMain)
            self.navigationController?.pushViewController(CustomSupportVC, animated: true)
            
        case 5:
            break
        case 6:
           let FAQsVC = FaqMain.instantiate(fromAppStoryboard: .FaqsMain)
            self.navigationController?.pushViewController(FAQsVC, animated: true)
        case 7:
            break
        case 8:
            let feedbackVC = RAMAnimatedTabBarController.instantiate(fromAppStoryboard: .FeedbackMain)
            self.navigationController?.pushViewController(feedbackVC, animated: true)
        case 9:
            break
        case 10:
            break
        default:
            break
        }
    }
}

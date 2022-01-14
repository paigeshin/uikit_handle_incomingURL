//
//  CustomMessageVC.swift
//  DeepLink2
//
//  Created by paige on 2022/01/14.
//

import UIKit

class CustomMessageVC: UIViewController {
    
    @IBOutlet var customerIdLabel: UILabel!
    
    var customerId: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customerIdLabel.text = customerId
        
    }
    
}

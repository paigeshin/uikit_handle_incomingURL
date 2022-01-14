//
//  ViewController.swift
//  DeepLink2
//
//  Created by paige on 2022/01/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction private func buttonPressed(_ sender: UIButton) {
        let message = "Hitutorial"
        let path = "mypaigeapp://customerdetail?id=\(message)"
        let appUrl = URL(string: path)!
        let webUrl = URL(string: "https://bluemangoglobal.com")!
        if UIApplication.shared.canOpenURL(appUrl) {
            UIApplication.shared.open(appUrl, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.open(webUrl, options: [:], completionHandler: nil)
        }
    }
    
}


//
//  ViewController.swift
//  GBCARE
//
//  Created by MD ISHTIYAK on 13/04/19.
//  Copyright © 2019 MD ISHTIYAK. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    
    @IBOutlet weak var imgLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgLogo.layer.borderWidth = 1
        imgLogo.layer.borderColor = UIColor.white.cgColor
        Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(callwithTimer), userInfo: nil, repeats: false)
        
    }

    //MARK: Chnage Color Of Status Bar
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @objc func callwithTimer(){
        
        let loginVc = self.storyboard!.instantiateViewController(withIdentifier: "HomeTabController") as! HomeTabController
        loginVc.modalTransitionStyle = .crossDissolve
        navigationController!.pushViewController(loginVc,  animated: true)
        //present(loginVc, animated: true, completion: nil)
    }
}


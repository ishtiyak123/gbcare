//
//  RegistrationController.swift
//  BoomBox
//
//  Created by webskitters on 4/5/19.
//  Copyright © 2019 Webskitters. All rights reserved.
//

import UIKit

//MARK: CLASS REGISTRATION START HERE
class RegistrationController: UIViewController {

    //MARK: REQUIRED OUTLETS AND PROPERTIES
    @IBOutlet weak var txtemail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var txtMobileNumber: UITextField!
    @IBOutlet weak var btnSubmit: UIButton!
    
    
    
    //MARK: VIEW DID LOAD METHOD
    override func viewDidLoad() {
        super.viewDidLoad()

        settingLayouts()
    }

    
    func settingLayouts(){
        
        txtemail.addCornerRadius()
        txtemail.setPlaceHolderColor()
        txtemail.setWhiteBorder()
        
        txtPassword.addCornerRadius()
        txtPassword.setPlaceHolderColor()
        txtPassword.setWhiteBorder()
        
        txtConfirmPassword.addCornerRadius()
        txtConfirmPassword.setPlaceHolderColor()
        txtConfirmPassword.setWhiteBorder()
        
        txtMobileNumber.addCornerRadius()
        txtMobileNumber.setPlaceHolderColor()
        txtMobileNumber.setWhiteBorder()
        
        btnSubmit.addCornerRadius()
    }
    
    
    //MARK: BUTTON LOGIN ACTION
    @IBAction func btnLoginAction(_ sender: UIButton) {
        
      //  let loginVc = self.storyboard!.instantiateViewController(withIdentifier: StoryboardIdentifier.LoginController) as? LoginController
       // navigationController!.pushViewController(loginVc!,  animated: true)
        
    }
    
    
    
     //MARK: BUTTON SUBMIT ACTION
    @IBAction func btnSubmitAction(_ sender: UIButton) {
        
      //  let loginVc = self.storyboard!.instantiateViewController(withIdentifier: StoryboardIdentifier.LoginController) as? LoginController
       // navigationController!.pushViewController(loginVc!,  animated: true)
    
    }
    

}
//MARK: CLASS REGISTRATION END HERE

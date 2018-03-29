//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Sandra on 3/26/18.
//  Copyright © 2018 Sandra. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    //Outlets
    
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createAccntPressed(_ sender: Any) {
        guard let email = emailTxt.text , emailTxt.text != "" else {
            return
        }
        guard let pass  = passwordTxt.text, passwordTxt.text != "" else {
            return
        }
        AuthService.instance.registerUser(email: email, password: pass)
            { (success) in
                if success {
                    print("registered user!")
                }
            }
    }
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    @IBAction func pickBgColorPressed(_ sender: Any) {
    }
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}

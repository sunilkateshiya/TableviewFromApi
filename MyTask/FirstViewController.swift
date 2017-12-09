//
//  FirstViewController.swift
//  MyTask
//
//  Created by Rahul Panchal on 09/12/17.
//  Copyright © 2017 Rahul Panchal. All rights reserved.
//

import UIKit
import Toast_Swift


class FirstViewController: UIViewController,UITextFieldDelegate,UINavigationControllerDelegate {
    
    @IBOutlet weak var txtUserID: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        txtUserID.delegate = self

        // Do any additional setup after loading the view.
    }

   
    @IBAction func btnApplyTapped(_ sender: UIButton) {
        if txtUserID.text != ""
        {
            self.txtUserID.text = Globles.sharedInstance.UserID
            let obj : ViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.navigationController?.pushViewController(obj, animated: true)
            
        }else {
            self.view.makeToast("Please Enter UserID")
        }
        
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.txtUserID.resignFirstResponder()
        return true
    }
    
}

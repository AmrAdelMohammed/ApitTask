//
//  loginVC.swift
//  ApitTask
//
//  Created by Amr on 9/29/18.
//  Copyright © 2018 Amr. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD
import SwiftValidators

class loginVC: UIViewController {

    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavigationBar()
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    private func setupNavigationBar() {
        let attributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
//        self.navigationController?.navigationBar.isHidden = true
        self.navigationController?.navigationBar.barTintColor = UIColor.blue
        self.navigationController?.navigationBar.titleTextAttributes = attributes
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func validate() -> Bool {
        var isValide = true
        if emailTextfield.text! != "" {
            if !(Validator.isEmail().apply(emailTextfield.text!)){
                isValide = false
                let alert = UIAlertController(title: "Alert", message: "Please enter valid e-mail", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
        else{
            isValide = false
            let alert = UIAlertController(title: "Alert", message: "Please enter e-mail", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        if Validator.isEmpty().apply(passwordTextfield.text!){
            isValide = false
            let alert = UIAlertController(title: "Alert", message: "Enter your password", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
//            showAlert(title: "", message: "Enter your password")
        }
        
        //        isValide = false
        return isValide
    }
    @IBAction func sognupTapped(_ sender: UIButton) {
        if validate(){
        SVProgressHUD.show()
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil{
                print(error!)
            }
            else{
                
                print("success")
                let sb = UIStoryboard.init(name: "excelView", bundle: nil)
                let controller = sb.instantiateViewController(withIdentifier: "excelVC")
                self.navigationController?.pushViewController(controller, animated: true)
                //                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
        SVProgressHUD.dismiss()
        }
    }
    
    @IBAction func signinTapped(_ sender: UIButton) {
        if validate(){
        SVProgressHUD.show()
        //TODO: Log in the user
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil {
                print(error)
            }
            else {
                print("Successful")
                SVProgressHUD.dismiss()
                let sb = UIStoryboard.init(name: "excelView", bundle: nil)
                let controller = sb.instantiateViewController(withIdentifier: "excelVC")
                self.navigationController?.pushViewController(controller, animated: true)
//                self.performSegue(withIdentifier: "goToChat"    , sender: self)
            }
        }
        }
    }
    
}

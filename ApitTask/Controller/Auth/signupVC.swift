//
//  signupVC.swift
//  ApitTask
//
//  Created by Amr on 9/29/18.
//  Copyright © 2018 Amr. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class signupVC: UIViewController {

    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var emailtf: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confirmPasswordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    @IBAction func RegisterBtn(_ sender: Any) {
        SVProgressHUD.show()
        Auth.auth().createUser(withEmail: usernameTF.text!, password: passwordTF.text!) { (user, error) in
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

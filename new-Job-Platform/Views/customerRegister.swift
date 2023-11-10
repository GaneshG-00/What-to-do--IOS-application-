//
//  customerRegister.swift
//  new-Job-Platform
//
//  Created by Ganesh G on 08/11/23.
//

import UIKit
import Firebase
import FirebaseAuth

class customerRegister: UIViewController {

    @IBOutlet weak var customerName: UITextField!
    
    @IBOutlet weak var customerEmail: UITextField!
    
    @IBOutlet weak var customerPassword: UITextField!
    
    @IBOutlet weak var confirmpassword: UITextField!
    
    @IBOutlet weak var customerAddress: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func RegisterPressed(_ sender: UIButton) {
        guard let email = customerEmail.text , let password = customerPassword.text else {
            return
        }
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] authResult, error in
                guard let strongSelf = self else {
                    return
                }
                
                if let error = error {
                    // Handle login error
                    print("Login error: \(error.localizedDescription)")
                } else {
                    strongSelf.performSegue(withIdentifier: "customerToHome", sender: strongSelf)
                }
            }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

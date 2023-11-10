//
//  workerLogin.swift
//  new-Job-Platform
//
//  Created by Ganesh G on 09/11/23.
//

import UIKit

class workerLogin: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func newRegisteringPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "workerNewRegistering", sender: self)
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

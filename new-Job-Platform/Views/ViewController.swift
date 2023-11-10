//
//  ViewController.swift
//  new-Job-Platform
//
//  Created by Ganesh G on 31/10/23.
//

import UIKit
import DropDown

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func LoginPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "CustomerLoginSegue", sender: self)
    }
    
    @IBAction func WorkerLoginPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "WorkerLoginSegue", sender: self)
    }
    
}


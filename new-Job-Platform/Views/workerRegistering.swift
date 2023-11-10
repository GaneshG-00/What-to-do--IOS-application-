//
//  workerRegistering.swift
//  new-Job-Platform
//
//  Created by Ganesh G on 01/11/23.
//

import UIKit
import DropDown

class workerRegistering: UIViewController {
    
    @IBOutlet weak var dropDownButton:UIView!
    
    @IBOutlet weak var proffessionLabel: UILabel!
    
    @IBOutlet weak var workerEmail: UITextField!
    
    @IBOutlet weak var workerPassword: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    @IBOutlet weak var workerDateOfBirth: UITextField!
    
    let dropDown=DropDown()
    override func viewDidLoad() {
        super.viewDidLoad()
        dropDown.anchorView=dropDownButton
        dropDown.dataSource=["Electrician","Plumber","cleaning","Artist","Painting"]
        dropDown.selectionAction={ [unowned self] (index,item)in
            proffessionLabel.text="\(item)"
        }
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(showDropDown))
        dropDownButton.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
    }
    @objc func showDropDown(){
        dropDown.show()
    }

    @IBAction func RegisterPressed(_ sender: UIButton) {
        
    }
    
}

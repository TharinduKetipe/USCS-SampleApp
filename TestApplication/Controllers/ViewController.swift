//
//  ViewController.swift
//  TestApplication
//
//  Created by Tharindu Ketipearachchi on 8/5/19.
//  Copyright © 2019 Tharindu Ketipearachchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtSalary: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        APIClient.shared.updateUser(name: "Tharindu", salary: "30000", age: "25", userId: "719") { (status, response) in
//
//        }
//
//        APIClient.shared.employees { (status, response) in
////            print(response)
//        }
//
//        APIClient.shared.employee(empId: "15708") { (status, response) in
//            print(response)
//        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    @IBAction func didTapRegister(_ sender: Any) {
        if (txtName.text != "" && txtAge.text != "" && txtSalary.text != "") {
            APIClient.shared.register(name: txtName.text!, salary: txtSalary.text!, age: txtAge.text!) { (status, response) in
                if status == APIClient.APIResponseStatus.Success {
                    Utilities.AlertWithOkAction(view: self, title: "Success", message: "Registered successfully!")
                } else {
                    Utilities.AlertWithOkAction(view: self, title: "Error", message: "Registration failed. Please try again!")
                }
                       
                   }
            
        } else {
            Utilities.AlertWithOkAction(view: self, title: "Error", message: "Invalid details!")
        }
        
    }
}

extension ViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}


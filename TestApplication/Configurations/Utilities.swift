//
//  Utilities.swift
//  TestApplication
//
//  Created by Tharindu Ketipearachchi on 8/5/19.
//  Copyright © 2019 Tharindu Ketipearachchi. All rights reserved.
//

import UIKit

class Utilities: NSObject {
    
    class func AlertWithOkAction(view:UIViewController, title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default) { (action:UIAlertAction) in
            alert.dismiss(animated: true, completion: nil)
        }
        alert.addAction(okAction)
        view.present(alert, animated: true, completion: nil)
    }

}

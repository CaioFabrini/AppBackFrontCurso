//
//  AlertController.swift
//  AppBackFront
//
//  Created by Caio Fabrini on 19/12/22.
//

import UIKit

class AlertController: NSObject {

    var controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func getAlert(title: String, message: String, completion: (() -> Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .cancel) { share in
            completion?()
        }
        alertController.addAction(ok)
        self.controller.present(alertController, animated: true)
    }
    
}

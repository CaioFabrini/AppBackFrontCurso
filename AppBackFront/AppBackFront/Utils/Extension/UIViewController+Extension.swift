//
//  UIViewController+Extension.swift
//  AppBackFront
//
//  Created by Caio Fabrini on 05/12/22.
//

import Foundation
import UIKit

extension UIViewController {
    func dismissKeyboard() {
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
}

//
//  hideKeyboardWhenTappedAround.swift
//  Find Service
//
//  Created by Luis Gustavo Oliveira Silva on 18/03/20.
//  Copyright © 2020 Luis Gustavo Oliveira Silva. All rights reserved.
//

import Foundation
import UIKit
// MARK: - ViewController
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

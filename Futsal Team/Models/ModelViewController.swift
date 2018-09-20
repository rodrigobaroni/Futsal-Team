//
//  ModelViewController.swift
//  Rochdale FC
//
//  Created by Rodrigo Baroni on 14/09/2018.
//  Copyright © 2018 Rodrigo. All rights reserved.
//

import UIKit

open class ModelViewController: UIViewController {

    open func setupLayout(screenName: String){
        self.title = screenName
    }

}

extension ModelViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ModelViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

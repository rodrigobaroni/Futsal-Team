//
//  Extensions.swift
//  Rochdale FC
//
//  Created by Rodrigo Baroni on 17/09/2018.
//  Copyright © 2018 Rodrigo. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
//    func setupLabel(){
//        //self.font = UIFont(name: "", size: <#T##CGFloat#>)
//
//    }
//
}

extension UIView {
    
    func setupView(backColor: UIColor){
        self.layer.cornerRadius = 8.0
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.borderWidth = 0.0
        self.backgroundColor = backColor
    }
    
}

extension UIButton{
    
    func setupButton(hasCorner: Bool, backColor: UIColor){
        if hasCorner {
            self.layer.cornerRadius = 8.0
        }
        self.layer.borderWidth = 0.0
        self.layer.borderColor = UIColor.clear.cgColor
        self.backgroundColor = backColor
    }
}

extension UIImageView {
    
    func setupImgView(){
        self.layer.cornerRadius = 8.0
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.black.cgColor
        
    }
    
}

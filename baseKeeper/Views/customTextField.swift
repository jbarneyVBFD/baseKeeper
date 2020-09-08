//
//  customTextField.swift
//  baseKeeper
//
//  Created by John Barney on 9/8/20.
//  Copyright © 2020 John Barney. All rights reserved.
//

import UIKit

@IBDesignable

class customTextField: UITextField {

    override func prepareForInterfaceBuilder() {
        customizeView()
        }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        textAlignment = .center
        layer.cornerRadius = 5.0
            
        if placeholder == nil {
            placeholder = " "
        }
            
        let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: UIColor.white])
            
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}


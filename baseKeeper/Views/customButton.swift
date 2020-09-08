//
//  customButton.swift
//  baseKeeper
//
//  Created by John Barney on 9/8/20.
//  Copyright © 2020 John Barney. All rights reserved.
//

import UIKit

@IBDesignable
class customButton: UIButton {

    override func prepareForInterfaceBuilder() {
        customView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customView()
    }
    
    func customView() {
        layer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4)
        layer.borderWidth = 5.0
        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        layer.cornerRadius = 10
    }
    
    

}

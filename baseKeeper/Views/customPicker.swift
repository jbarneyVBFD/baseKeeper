//
//  customPicker.swift
//  baseKeeper
//
//  Created by John Barney on 9/8/20.
//  Copyright © 2020 John Barney. All rights reserved.
//

import UIKit

class customPicker: UIPickerView {

    var positions: [String] = ["P", "C", "1B", "2B", "3B", "SS", "LF", "CF", "RF", "DH", "BENCH"]
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}

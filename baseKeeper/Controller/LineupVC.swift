//
//  LineupVC.swift
//  baseKeeper
//
//  Created by John Barney on 9/20/20.
//  Copyright © 2020 John Barney. All rights reserved.
//

import UIKit

class LineupVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return fopr the row and component (column) that's being passed in
    internal func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }

    
    @IBOutlet weak var positionPicker: UIPickerView!
    
    //var pickerData: [Player.position] = [Player.position]()
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Connect data:
        self.positionPicker.delegate = self
        self.positionPicker.dataSource = self
        // Input the data into the array
        //pickerData = [Player.position.P, Player.position.C, Player.position.FIRST, Player.position.THIRD, Player.position.SECOND, Player.position.SS, Player.position.LF, Player.position.CF, Player.position.DH, Player.position.bench]
        
        pickerData = ["P", "C", "1B", "3B", "2B", "SS", "LF", "CF", "RF", "DH", "bench"]
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

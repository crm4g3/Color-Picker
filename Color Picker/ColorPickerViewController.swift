//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Cody McIlviane on 4/16/18.
//  Copyright © 2018 Cody McIlviane. All rights reserved.
//

import Foundation
import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
   
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var colorNameDisplay: UILabel!
    
    var colors = [Color(name: "red", uiColor: UIColor.red),
                  Color(name: "orange", uiColor: UIColor.orange),
                  Color(name: "yellow", uiColor: UIColor.yellow),
                  Color(name: "green", uiColor: UIColor.green),
                  Color(name: "blue", uiColor: UIColor.blue),
                  Color(name: "purple", uiColor: UIColor.purple)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorNameDisplay.text = colors[0].name
        view.backgroundColor = colors[0].uiColor
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorNameDisplay.text = colors[row].name
        view.backgroundColor = colors[row].uiColor
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

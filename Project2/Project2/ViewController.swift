//
//  ViewController.swift
//  Project2
//
//  Created by Connor Parker on 4/10/19.
//  Copyright © 2019 Connor Parker. All rights reserved.
//

import UIKit

class Global {
    var sliderVar:Int = 0
}

let global = Global()

let items = ["Austin, Texas", "Miami, Florida", "New York, New York"]

var selection:String!

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
@IBOutlet weak var picker: UIPickerView!
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = items[row]
    }
    

    @IBAction func myButton(_ sender: UIButton) {
        if (selection == "Austin, Texas"){
            
            performSegue(withIdentifier: "AustinSegue", sender: self)
            
        }
        
        else if (selection == "Miami, Florida"){
            
            performSegue(withIdentifier: "MiamiSegue", sender: self)
            
        }
        
        else if (selection == "New York, New York"){
            
            performSegue(withIdentifier: "NewYorkSegue", sender: self)
            
        }
        
    }
    
    
    
    override func viewDidLoad() {
        picker.delegate = self
        picker.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


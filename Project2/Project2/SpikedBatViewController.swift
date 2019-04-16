//
//  SpikedBatViewController.swift
//  Project2
//
//  Created by Connor Parker on 4/10/19.
//  Copyright © 2019 Connor Parker. All rights reserved.
//

import UIKit

var score:Int = 0

class SpikedBatViewController: UIViewController {
    
    @IBOutlet weak var myScore: UILabel!
    
    @IBAction func myButton(_ sender: Any) {
        score = score + 5
        myScore.text = "Your Score: \(score)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

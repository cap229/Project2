//
//  OverheatViewController.swift
//  Project2
//
//  Created by Connor Parker on 4/16/19.
//  Copyright © 2019 Connor Parker. All rights reserved.
//

import UIKit

class OverheatViewController: UIViewController {
    func didScore(points:Int){
        score = score + points
        if(score % 10 == 0) {
            score=0
        }
        myScore.text = "Score: \(score)"
    }

    @IBOutlet weak var myScore: UILabel!
    override func viewDidLoad() {
        myScore.text = "Zombies Killed:\(score)"

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

//
//  CardWorkoutVC.swift
//  CardWorkout2
//
//  Created by Tauan Camargo on 24/03/23.
//

import UIKit

class CardWorkoutVC: UIViewController {
    var timer: Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(generateRandomImages), userInfo: nil, repeats: true)
    }
    
    @objc func generateRandomImages() {
        
    }
}

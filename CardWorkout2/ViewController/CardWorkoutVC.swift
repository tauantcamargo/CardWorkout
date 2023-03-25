//
//  CardWorkoutVC.swift
//  CardWorkout2
//
//  Created by Tauan Camargo on 24/03/23.
//

import UIKit

class CardWorkoutVC: UIViewController {
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet var cardImageView: UIImageView!
    
    var timer: Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        addingStylesToButtons()
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        timer.invalidate()
    }
    
    func addingStylesToButtons() {
        for button in buttons {
            button.layer.cornerRadius = 8
        }
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage() {
        cardImageView.image = Card.allValues.randomElement() ?? UIImage(named: "AS")
    }
    
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
    }
    
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }
    
    
    @IBAction func rulesButtonTapped(_ sender: UIButton) {
        timer.invalidate()
    }
}

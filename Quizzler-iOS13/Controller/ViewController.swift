//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionText: UILabel!
    
  
    var quizBrain = QuizBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBAction func Button(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotRight = quizBrain.checkAnswer(userAnswer)
        if userGotRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red        }
        quizBrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self,selector: #selector(updateUI),userInfo: nil,repeats: false)
                        
    }
    @objc func updateUI()  {
        questionText.text = quizBrain.getQuestionText()
        button1.setTitle(quizBrain.getText()[0], for: .normal)
        button2.setTitle(quizBrain.getText()[1], for: .normal)
        button3.setTitle(quizBrain.getText()[2], for: .normal)
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        button1.backgroundColor = UIColor.clear
        button2.backgroundColor = UIColor.clear
        button3.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
    }


}


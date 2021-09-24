//
//  ViewController.swift
//  project2
//
//  Created by Decagon on 21/09/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    var numberOfQuestions = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        button1.layer.borderWidth = 1
        button1.layer.borderColor = UIColor.lightGray.cgColor
        
        button2.layer.borderWidth = 1
        button2.layer.borderColor = UIColor(red: 1.0, green: 0.8, blue: 0.4, alpha: 1.0).cgColor
        
        button3.layer.borderWidth = 1
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion()
    }

    func askQuestion(action: UIAlertAction! = nil) {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Score", style: .plain, target: self, action: #selector(showScore))
        
        title = "\(countries[correctAnswer].uppercased())"
    }
    
    @objc func showScore() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "\(score)", style: .done, target: self, action: nil)
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        
        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
        } else {
            title = "Wrong! That's the flag of \(countries[correctAnswer].capitalized)"
            score -= 1
        }
        numberOfQuestions += 1
        
        if numberOfQuestions == 10 {
            // show final alert
            
            let ac = UIAlertController(title: "The End", message: "Your Total Score is \(score)", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Restart Game", style: .destructive , handler: askQuestion))
            present(ac, animated: true)
            numberOfQuestions = 0
            
        } else {
            let ac = UIAlertController(title: title, message: "Your score is \(score)", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
            present(ac, animated: true)
        }

    }
    
}


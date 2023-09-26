//
//  ViewController.swift
//  UIKit_3
//
//  Created by mac on 22.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playerNameLabel: UILabel!
    @IBOutlet weak var firstValueLanel: UILabel!
    @IBOutlet weak var twiceValueLabel: UILabel!
    @IBOutlet weak var sumValueLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var actualyNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        alertName(title: "Welcome to games!", message: "Inter your name", style: .alert)
    }
    
    //MARK: - Alert function for name player
    func alertName(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style) // создание алерта
        let action = UIAlertAction(title: "Inter name", style: .default) { (action) in // создание кнопки
            let text = alertController.textFields?.first?.text
            self.playerNameLabel.text! += text ?? "" // добавление текста в наш лейбл
        }
        
        alertController.addTextField(configurationHandler: nil) // добавление поля вврда
        alertController.addAction(action) // добавление кнопки
        self.present(alertController, animated: true) // показать наш алерт
    }
    
    //MARK: - Sum two values game
    @IBAction func gameOfSumButton(_ sender: Any) {
        sumGame(title: "Welcome to game!", message: "Inter your numbers!", style: .alert)
    }
    
    func sumGame(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Inter your number!", style: .default) { (action) in
            let firstText = alertController.textFields?.first?.text
            self.firstValueLanel.text! = "First value: \(firstText ?? "0")"
            let twiceText = alertController.textFields?[1].text
            self.twiceValueLabel.text! = "Twice value: \(twiceText ?? "0")"
            self.sumValueLabel.text! = "Sum: \(String(Int(firstText ?? "0")! + Int(twiceText ?? "0")!))"
        }
        
        alertController.addTextField(configurationHandler: nil)
        alertController.addTextField(configurationHandler: nil)
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
    
    //MARK: - Guess the number game
    @IBAction func guessTheNumberButton(_ sender: Any) {
        guessTheNumberGame(title: "Welcom to game!", message: "Guess the number! 1 to 3", style: .alert)
    }
    
    func guessTheNumberGame(title: String, message: String, style: UIAlertController.Style) {
        let randomValue = Int.random(in: 1...3)
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Start the game!", style: .default) { (action) in
            
            let number = alertController.textFields?.first?.text
            if number == String(randomValue) {
                self.resultLabel.text! = "WIN!"
            } else {
                self.resultLabel.text! = "LOSE!"
            }
            self.actualyNumber.text! = "This's number was: \(randomValue)"
        }
        
        alertController.addTextField(configurationHandler: nil)
        alertController.addAction(action)
        self.present(alertController, animated: true)
    }
}



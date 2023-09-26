//
//  ViewControllerTwice.swift
//  UIKit_3
//
//  Created by mac on 22.09.2023.
//

import UIKit

class ViewControllerTwice: UIViewController {

    @IBOutlet weak var oldWordLabel: UILabel!
    @IBOutlet weak var newWordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func startButton(_ sender: Any) {
        startAlert(title: "Hello", message: "Введите слово", style: .alert)
    }
    
    func startAlert(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Generate", style: .default) { (action) in
            self.oldWordLabel.text! = "Old word: \(alertController.textFields?.first?.text ?? "")"
            self.newWordLabel.text! = "New word: \(model.convertingWord(alertController.textFields?.first?.text ?? ""))"
        }
        
        alertController.addTextField()
        alertController.addAction(action)
        self.present(alertController, animated: true)
    }
}

struct Model {
    func convertingWord(_ word: String) -> String {
        if word == "leohl" {
            return "hello"
        } else {
            return "Недопустимое слово"
        }
    }
}
let model = Model()

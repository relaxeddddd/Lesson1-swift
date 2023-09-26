//
//  ViewController.swift
//  UIKit_4
//
//  Created by mac on 24.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var cloudImg: UIImageView!
        
    @IBOutlet weak var enterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loginTF.addBottomBorderLine(width: 1.0, color: .darkGray)
        
        self.passwordTF.addBottomBorderLine(width: 1.0, color: .darkGray)
        
        enterButton.layer.cornerRadius = 5
    }
    
    @IBAction func enterButton(_ sender: Any) {
        if loginTF.text!.isEmpty || !loginTF.text!.contains("@mail.ru") || passwordTF.text!.isEmpty {
            let alertController = UIAlertController(title: "Ошибка входа", message: "Введите корректно логин или пароль!", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default)
            alertController.addAction(action)
            present(alertController, animated: true)
        } else {
            let storyboard = UIStoryboard(name: "TwiceViewController", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "TwiceViewController") as! TwiceViewController
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}

extension UIView {
    func addBottomBorderLine(width: CGFloat, color: UIColor) {
        let bottomBorderLine = CALayer()
        bottomBorderLine.backgroundColor = color.cgColor
        bottomBorderLine.frame = CGRect(x: 0, y: self.frame.height - width, width: self.frame.width, height: width)
        
        self.layer.addSublayer(bottomBorderLine )
    }
}



//
//  TwiceViewController.swift
//  UIKit_4
//
//  Created by mac on 25.09.2023.
//

import UIKit

class TwiceViewController: UIViewController {
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var personTF: UITextField!
    @IBOutlet weak var numberOfTableTF: UITextField!
    
    @IBOutlet weak var armoreTableButton: UIButton!
    @IBOutlet weak var checkButton: UIButton!
    
    let switchOfArmoredTable = UISwitch()
    let switchOfPrepayment = UISwitch()
    let switchOfVip = UISwitch()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameTF.addBottomBorderLine(width: 1.0, color: .darkGray)
        self.personTF.addBottomBorderLine(width: 1.0, color: .darkGray)

        
        self.armoreTableButton.layer.cornerRadius = 3
        self.checkButton.layer.cornerRadius = 3
        
        //MARK: - Create switchOfArmoredTable
        self.switchOfArmoredTable.frame = CGRect(x: 285, y: 475, width: 0, height: 0)
        self.view.addSubview(self.switchOfArmoredTable)
        
        //MARK: - Create switchOfPrepayment
        self.switchOfPrepayment.frame = CGRect(x: 285, y: 535, width: 0, height: 0)
        self.view.addSubview(self.switchOfPrepayment)
        
        //MARK: - Create switchOfVip
        self.switchOfVip.frame = CGRect(x: 285, y: 595, width: 0, height: 0)
        self.view.addSubview(self.switchOfVip)
    }
    
    @IBAction func armoreButton() {
        if nameTF.text!.isEmpty || personTF.text!.isEmpty {
            let alertController = UIAlertController(title: "Ошибка входа", message: "Введите корректно все данные!", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default)
            alertController.addAction(action)
            present(alertController, animated: true)
        } else {
            let alertControl = UIAlertController(title: "Чек", message: "Чек сформирован! Перейти дальше?", preferredStyle: .alert)
            let alertOk = UIAlertAction(title: "Перейти", style: .default) { _ in
                let storyboard = UIStoryboard(name: "CheckViewController", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "CheckViewController") as! CheckViewController
                self.navigationController?.pushViewController(viewController, animated: true)
            }
            let alsrtCancle = UIAlertAction(title: "Закрыть", style: .default)

            alertControl.addAction(alertOk)
            alertControl.addAction(alsrtCancle)
            self.present(alertControl, animated: true)
        }
    }
    
    @IBAction func chooseTableButton() {
        let storyboard = UIStoryboard(name: "TableViewController", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
        self.present(viewController, animated: true)
    }
}


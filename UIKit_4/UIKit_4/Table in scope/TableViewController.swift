//
//  TableViewController.swift
//  UIKit_4
//
//  Created by mac on 25.09.2023.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var statusTableOneLable: UILabel!
    @IBOutlet weak var statusTableTwoLable: UILabel!
    
    @IBOutlet weak var armorOneStyleButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func armorOneButton() {
        statusTableOneLable.text! = "Статус стола: забронирован"
        armorOneStyleButton?.backgroundColor = .blue
        
    }
    
    @IBAction func armorTwoButton() {
        statusTableTwoLable.text! = "Статус стола: забронирован"
        armorOneStyleButton?.backgroundColor = .blue
        
    }
    
    @IBAction func armorButton() {
        dismiss(animated: true)
    }
}

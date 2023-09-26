//
//  CheckViewController.swift
//  UIKit_4
//
//  Created by mac on 25.09.2023.
//

import UIKit

class CheckViewController: UIViewController {
    @IBOutlet weak var nameOfSalat: UILabel!
    @IBOutlet weak var productOfSalat: UILabel!
    @IBOutlet weak var priceOfSalat: UILabel!
    
    @IBOutlet weak var nameOfSalat2: UILabel!
    @IBOutlet weak var productOfSalat2: UILabel!
    @IBOutlet weak var priceOfSalat2: UILabel!
    
    @IBOutlet weak var checkButton: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameOfSalat.text = "Цезарь"
        productOfSalat.text = "Помидор, салат айсберг, сухарики, курица"
        let price1 = 300
        priceOfSalat.text = String(Int(price1)) + " руб"
        
        nameOfSalat2.text = "Греческий"
        productOfSalat2.text = "Помидор, салат айсберг, сухарики, курица"
        let price2 = 400
        priceOfSalat2.text = String(Int(price2)) + " руб"
        
        
        checkButton.setTitle("Итог: \(price1 + price2) рублей", for: .normal)
        checkButton.layer.cornerRadius = 5
    }
    
    @IBAction func chechButton() {
        let alertController = UIAlertController(title: "Заказ оформлен!", message: "Будем Вас ожидать в нашем ресторане!", preferredStyle: .alert)
        let action = UIAlertAction(title: "Мне все понятно", style: .default) { _ in
            let storyboard = UIStoryboard(name: "TwiceViewController", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "TwiceViewController") as! TwiceViewController
            self.navigationController?.pushViewController(viewController, animated: true)
        }
        
        alertController.addAction(action)
        present(alertController, animated: true)
    }
}

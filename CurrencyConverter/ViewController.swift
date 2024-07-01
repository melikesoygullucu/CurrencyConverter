//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Melike Soygüllücü on 1.07.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tryLabel: UILabel!
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var chfLabel: UILabel!
    @IBOutlet weak var gbpLabel: UILabel!
    @IBOutlet weak var jpyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func convertButton(_ sender: Any) {
        // MARK: 1. Request & Sessin
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=4a990ae1cc0ef5a920e4c7e9eeb1123c")
        let session = URLSession.shared
        let task = session.dataTask(with: url!) { data, response, error in
            if error != nil {
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let OKButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(OKButton)
                self.present(alert, animated: true, completion: nil)
            } else {
                // MARK: 2. Response & Data
                if data != nil {
                    
                }
            }
        }
        task.resume()
        
        // MARK: 3. Parsing & JSON Serialization
        
    }
    
}


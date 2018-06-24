//
//  ViewController.swift
//  sample2
//
//  Created by Leela krishna Sarepalli on 22/06/18.
//  Copyright © 2018 Leela krishna Sarepalli. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Protocalontroller {
    func sendbackdata(data: String) {
        label1.text = data
    }
    

    @IBOutlet weak var text1: UITextField!
    
    @IBOutlet weak var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func click1(_ sender: UIButton) {
        performSegue(withIdentifier: "navigate1", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "navigate1" {
            let destVC = segue.destination as! ViewController2
            destVC.textPassedOver = text1.text
            destVC.textPassedOver2 = label1.text
          destVC.delegate2 = self
        }
        
    }
    
}


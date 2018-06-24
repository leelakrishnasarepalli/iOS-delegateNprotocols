//
//  ViewController2.swift
//  sample2
//
//  Created by Leela krishna Sarepalli on 22/06/18.
//  Copyright © 2018 Leela krishna Sarepalli. All rights reserved.
//

import UIKit
protocol Protocalontroller{
    func sendbackdata(data : String)
}
class ViewController2: UIViewController {

    var delegate2 : Protocalontroller?
    var textPassedOver : String?
   var textPassedOver2 : String?
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var text2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
text2.text = textPassedOver2
        label2.text = textPassedOver
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func back(_ sender: UIButton) {
        delegate2?.sendbackdata(data: text2.text!)
        dismiss(animated: true, completion: nil)
    }
    
}

//
//  ViewController.swift
//  TextFiledEdit
//
//  Created by G L Lokesh on 3/18/18.
//  Copyright © 2018 G L Lokesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var editTextFieldToggle: Bool = false

    @IBOutlet weak var editTextVview: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toggleButtonClick(_ sender: Any) {
        editTextFieldToggle = !editTextFieldToggle //switches button ON/OFF
        
        if editTextFieldToggle == true {
            editTextVview.isUserInteractionEnabled = true
            editTextVview.isEnabled = true
            editTextVview.layer.borderWidth = 3
            editTextVview.layer.borderColor = UIColor.darkGray.cgColor

        } else {
            editTextVview.layer.borderColor = UIColor.clear.cgColor
            editTextVview.isEnabled = false
            editTextVview.isUserInteractionEnabled = false

        }
    }
    
}


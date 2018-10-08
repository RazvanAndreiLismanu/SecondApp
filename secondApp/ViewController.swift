//
//  ViewController.swift
//  secondApp
//
//  Created by Razvan andrei lismanu on 9/26/18.
//  Copyright © 2018 Razvan andrei lismanu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: properties
    
    @IBOutlet weak var nombreTxt: UITextField!
    
    @IBOutlet weak var nombreLbl: UILabel!
    
    
    //MARK: actions
    
    @IBAction func setResetBtn(sender: UIButton) {
        nombreLbl.text="Nombre ??"
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        nombreLbl.text = "Hola " + nombreTxt.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nombreTxt.delegate=self;
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


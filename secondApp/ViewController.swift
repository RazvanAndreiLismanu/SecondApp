//
//  ViewController.swift
//  secondApp
//
//  Created by Razvan andrei lismanu on 9/26/18.
//  Copyright © 2018 Razvan andrei lismanu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate,UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    //MARK: properties
    
    @IBOutlet weak var nombreTxt: UITextField!
    
    @IBOutlet weak var nombreLbl: UILabel!
    
    @IBOutlet weak var imgView: UIImageView!
    
    //MARK: actions
    
    @IBAction func setResetBtn(sender: UIButton) {
        imgView.image=UIImage(named: "Imagen predeterminada")!
    }
    @IBAction func seleccionarImagen(sender: UITapGestureRecognizer) {
        nombreTxt.resignFirstResponder()
        let imagePickCtrl = UIImagePickerController()
        imagePickCtrl.sourceType = .PhotoLibrary
        imagePickCtrl.delegate = self
        presentViewController(imagePickCtrl,animated:true,completion:nil)
        
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) { dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let selectedImage=info[UIImagePickerControllerOriginalImage] as! UIImage
        imgView.image=selectedImage
        dismissViewControllerAnimated(true, completion: nil)
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


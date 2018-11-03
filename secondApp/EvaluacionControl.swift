//
//  EvaluacionControl.swift
//  secondApp
//
//  Created by Razvan andrei lismanu on 11/3/18.
//  Copyright © 2018 Razvan andrei lismanu. All rights reserved.
//

import UIKit

class EvaluacionControl: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    //MARK: atributos
    var gradoAfinidad = 0{
        didSet{
            actualizaEstrellas()
        }
    }
    var botones = [UIButton]()
    let tamanio = CGRect(x: 0, y: 0, width: 44, height: 44)
    
    //MARRK: inicialización
    
    required init?(coder aDecoder:	NSCoder){
        super.init(coder: aDecoder)
        
        for i in 0..<5{
            let boton = UIButton(frame: tamanio)
            
            boton.setImage(UIImage(named:"Estrella vacia"), forState: .Normal)
            boton.setImage(UIImage(named:"Estrella rellena"), forState: .Selected)
            boton.adjustsImageWhenHighlighted = false
            
            boton.addTarget(self, action: #selector(btnEval(_:)), forControlEvents: .TouchDown)
            botones += [boton]
            boton.tag = i;
            addSubview(boton)
        }
        
    }
    
    //MARK: funciones
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240,height: 44)
    }
    
    func actualizaEstrellas(){
        for (i, botonI) in botones.enumerate(){
            botonI.selected = gradoAfinidad > i }
    }
    
    
    func btnEval(boton : UIButton){
        gradoAfinidad = botones.indexOf(boton)! + 1
        actualizaEstrellas()
    }
    
    override func layoutSubviews() {
        for (i, boton) in botones.enumerate() {
            boton.frame.origin.x = CGFloat(i * (44 + 5))
        }
        actualizaEstrellas()
    }

}

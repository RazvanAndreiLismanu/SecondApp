//
//  EvaluacionControl.swift
//  secondApp
//
//  Created by Aula11 on 22/10/18.
//  Copyright © 2018 Razvan andrei lismanu. All rights reserved.
//

import UIKit

class EvaluacionControl: UIView {
    
    //MARK: atributos
    var gradoAfinidad = 0
    var botones = [UIButton]()
    var tamaño = CGRect(x:0, y: 0, width: 44, height: 44)
    

    //MARK: inicialización
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        for i in 0..<5{
            let boton = UIButton(frame: tamaño)
            boton.backgroundColor = UIColor.redColor()
            boton.addTarget(self, action: #selector(btnEval(_:)), forControlEvents: .TouchDown)
            botones += [boton]
            boton.tag=i
            addSubview(boton)
        }
        
    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
    }
    
    override func layoutSubviews() {
        for (i, boton) in botones.enumerate() {
            boton.frame.origin.x = CGFloat(i * (44 + 5))
        }
    }
    
    //MARK: actions
    func btnEval(boton: UIButton) {
        switch boton.tag{
        case 0:
            print("Botón 1 pulsado...👍")
        case 1:
            print("Botón 2 pulsado...👍")
        case 2:
            print("Botón 3 pulsado...👍")
        case 3:
            print("Botón 4 pulsado...👍")
        default:
            print("Botón 5 pulsado...👍")
        }
    }
    
    
}

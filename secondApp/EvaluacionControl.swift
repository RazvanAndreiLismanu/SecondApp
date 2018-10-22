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
    

    //MARK: inicialización
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        for _ in 0..<5{
            let boton = UIButton(frame: CGRect(x:0, y: 0, width: 44, height: 44))
            boton.backgroundColor = UIColor.redColor()
            boton.addTarget(self, action: #selector(btnEval(_:)), forControlEvents: .TouchDown)
            botones += [boton]
            addSubview(boton)
        }
        
    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
    }
    
    override func layoutSubviews() {
        for (i, boton) in botones.enumerate() {
            boton.frame.origin.x = CGFloat(i * (44 + 5)) }
    }
    
    //MARK: actions
    func btnEval(boton: UIButton) {
        print("Botón pulsado...👍")
    }
    
    
}

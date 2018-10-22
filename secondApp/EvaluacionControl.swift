//
//  EvaluacionControl.swift
//  secondApp
//
//  Created by Aula11 on 22/10/18.
//  Copyright © 2018 Razvan andrei lismanu. All rights reserved.
//

import UIKit

class EvaluacionControl: UIView {

    //MARK: inicialización
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        let boton = UIButton(frame: CGRect(x:0, y: 0, width: 44, height: 44))
        boton.backgroundColor = UIColor.redColor()
        addSubview(boton)
    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
    }
    
}

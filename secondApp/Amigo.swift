//
//  Amigo.swift
//  secondApp
//
//  Created by Razvan andrei lismanu on 11/3/18.
//  Copyright © 2018 Razvan andrei lismanu. All rights reserved.
//

import UIKit

class Amigo{
    //MARK: atributos
    
    var nombre: String
    var foto: UIImage?
    var gradoAfinidad: Int
    
    //MARK: Inicialización
    init?(nombre: String, foto: UIImage?, gAfinidad: Int){ self.nombre = nombre
        self.foto = foto
        self.gradoAfinidad = gAfinidad
        if nombre.isEmpty || gAfinidad < 0 {
            return nil
        }

    }
}
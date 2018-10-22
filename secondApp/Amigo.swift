//
//  Amigo.swift
//  secondApp
//
//  Created by Aula11 on 22/10/18.
//  Copyright © 2018 Razvan andrei lismanu. All rights reserved.
//

import UIKit //Eliminamos Foundation 
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


//
//  AmigoTableViewController.swift
//  secondApp
//
//  Created by Razvan andrei lismanu on 11/3/18.
//  Copyright © 2018 Razvan andrei lismanu. All rights reserved.
//

import UIKit

class AmigoTableViewController: UITableViewController {
    
    var amigos = [Amigo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let amigo1 = Amigo(nombre: "Rihanna", foto: UIImage(named:"amigo1")!, gAfinidad: 5)
        let amigo2 = Amigo(nombre: "Donald", foto: UIImage(named:"amigo2")!, gAfinidad: 0)
        let amigo3 = Amigo(nombre: "Esteban", foto: UIImage(named:"amigo3")!, gAfinidad: 5)
        amigos += [amigo1!, amigo2!, amigo3!]
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return amigos.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("AmigoTableViewCell", forIndexPath: indexPath) as! AmigoTableViewCell
        cell.nombre.text = amigos[indexPath.row].nombre
        cell.foto.image = amigos[indexPath.row].foto
        cell.evaluacion.gradoAfinidad = amigos[indexPath.row].gradoAfinidad
        return cell
    }

}

//
//  ListaTableViewController.swift
//  terremotos
//
//  Created by Asier on 25/2/18.
//  Copyright © 2018 grupoA. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ListaTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        while JSON == nil {
            print("ESPERANDO DATOS")
        }
        let data = JSON!["features"] as! NSArray
        return data.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> celdaTableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! celdaTableViewCell
        let data = JSON!["features"] as! NSArray
        
        let obj = data[indexPath.row] as! NSDictionary

        let obj2 = obj["properties"] as! NSDictionary
        print(obj2)

        // “green”, “yellow”, “orange”, “red”.
        switch obj2["alert"] as? String {
        case "green"?:
            cell.backgroundColor = UIColor.init(red: 0, green: 0.609375, blue: 0.05, alpha: 1)


        case "yellow"?:
            cell.backgroundColor = UIColor.yellow

        case "orange"?:
            cell.backgroundColor = UIColor.orange

        case "red"?:
            cell.backgroundColor = UIColor.red

        default:
            print()
        }

        cell.lugar.text = obj2["place"] as? String
        cell.mag.text = String(format:"%g", (obj2["mag"] as? Double)!)

        return cell
        
    }
}

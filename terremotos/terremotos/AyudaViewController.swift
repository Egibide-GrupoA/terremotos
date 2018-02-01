//
//  AyudaViewController.swift
//  terremotos
//
//  Created by  on 1/2/18.
//  Copyright © 2018 grupoA. All rights reserved.
//

import UIKit

class AyudaViewController: UIViewController {

    @IBOutlet weak var texto: UILabel!
    @IBOutlet weak var sege: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // SegementControl
    @IBAction func SegeValueChange(_ sender: Any) {
        
        if sege.selectedSegmentIndex == 0{
            
            texto.text = "1. Organiza y participa en simulacros de evacuación/n 2. Identifica las zonas de seguridad/n 3. Revisa las instalaciones de gas y luz/n 4.Almacena alimentos no perecederos y agua"
        }
        
        if sege.selectedSegmentIndex == 1{
            
            texto.text = "1.Aléjate de ventanas y objetos que puedan caer/n 2.Converva la calma y ubicate en la zona de seguridad/n 3.Corta el suministro de gas y electricidad/n 4.Aléjate de postes, cables y marquesinas/n 5.Estacionate alejado de edificios altos"
        }
        
        if sege.selectedSegmentIndex == 2{
            
            texto.text = "1.Revisa las condiciones de tu casa/n 2.No enciendas cerillas o o velas hasta asegurarte de que no hay fugas de gas/N 3.Utiliza el teléfono sólo para emergencias/n 4.Mantente informatdo y atiende a las recomendaciones de las autoridades/n 5.Mantente alerta, se pueden presentar réplicas"
            
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

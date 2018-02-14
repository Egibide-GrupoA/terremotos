//
//  ViewController.swift
//  terremotos
//
//  Created by Asier on 28/1/18.
//  Copyright © 2018 grupoA. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

   
 
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBAction func slider(_ sender: UISlider) {
        
        lbl.text = String(sender.value)
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}




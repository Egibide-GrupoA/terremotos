//
//  AjustesViewController.swift
//  terremotos
//
//  Created by  on 15/2/18.
//  Copyright © 2018 grupoA. All rights reserved.
//

import UIKit

class AjustesViewController: UIViewController {

    
    @IBOutlet weak var lbl: UILabel!
    
    @IBAction func slider(_ sender: UISlider){
        
        lbl.text = String (Int(sender.value))
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

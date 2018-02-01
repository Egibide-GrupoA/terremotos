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
            
            texto.text = "Antes"
        }
        
        if sege.selectedSegmentIndex == 1{
            
            texto.text = "Durante"
        }
        
        if sege.selectedSegmentIndex == 2{
            
            texto.text = "Después"
            
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

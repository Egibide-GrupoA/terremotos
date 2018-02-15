//
//  AyudaViewController.swift
//  terremotos
//
//  Created by  on 1/2/18.
//  Copyright © 2018 grupoA. All rights reserved.
//

import UIKit

class AyudaViewController:
    UIViewController {

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
    
    @IBOutlet weak var durante: UIView!
    @IBOutlet weak var antes: UIView!
    @IBOutlet weak var despues: UIView!
    
    // SegementControl
    @IBAction func SegeValueChange(_ sender: Any) {
        switch sege.selectedSegmentIndex {
        case 0:
            antes.isHidden = false
            durante.isHidden = true
            despues.isHidden = true
        case 1:
            antes.isHidden = true
            durante.isHidden = false
            despues.isHidden = true
        case 2:
            antes.isHidden = true
            durante.isHidden = true
            despues.isHidden = false
        default:
            antes.isHidden = false
            durante.isHidden = true
            despues.isHidden = true
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

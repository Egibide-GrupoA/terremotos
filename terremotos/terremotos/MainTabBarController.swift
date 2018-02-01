//
//  MainTabBarController.swift
//  terremotos
//
//  Created by Asier on 1/2/18.
//  Copyright © 2018 grupoA. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // REF: Tamaño de la barra de navegación de iOS 11: https://chariotsolutions.com/blog/post/large-titles-ios-11/
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // REF: Desactivar verificación de HTTPS: https://stackoverflow.com/a/30732693/5136913
        let url = "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.geojson"
        
        Alamofire.request(url)
            .responseJSON { response in
                debugPrint(response)
        }
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

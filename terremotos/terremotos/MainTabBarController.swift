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
var JSON: NSDictionary? = nil



class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        // REF: Tamaño de la barra de navegación de iOS 11: https://chariotsolutions.com/blog/post/large-titles-ios-11/
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // REF: Desactivar verificación de HTTPS: https://stackoverflow.com/a/30732693/5136913
        let url = "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/4.5_month.geojson"
        //let url = "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.geojson"

        //let URL = "https://raw.githubusercontent.com/tristanhimmelman/AlamofireObjectMapper/d8bb95982be8a11a2308e779bb9a9707ebe42ede/sample_json"
        Alamofire.request(url, encoding: JSONEncoding.default)
            .responseJSON { response in
                //print(response)
                //to get status code
                if let status = response.response?.statusCode {
                    switch(status){
                    case 201:
                        print("example success")
                    default:
                        print("error with response status: \(status)")
                    }
                }
                //to get JSON return value
                if let result = response.result.value {
                    JSON = result as! NSDictionary
                    for element in JSON!["features"] as! NSArray{
                        let obj = element as! NSDictionary
                        let obj2 = obj["properties"] as! NSDictionary
                        print(obj2["title"])
                    }
                }
        }
        super.viewDidLoad()

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

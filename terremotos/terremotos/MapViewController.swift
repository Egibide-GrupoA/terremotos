
import UIKit

import Alamofire
import SwiftyJSON

import MapKit

class Artwork: NSObject, MKAnnotation {
    let title: String?
    let locationName: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D, numero: Int) {
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return locationName
    }
    
}

class MapViewController: UIViewController {
    // Objeto de SwiftyJSON
    @IBOutlet weak var mapView: MKMapView!
    func centerMapOnLocation(location: CLLocation) {
        let span = MKCoordinateSpan.init(latitudeDelta:180.0, longitudeDelta: 360.0)
        let resd = CLLocationCoordinate2D.init(latitude:0, longitude:0)
        let region = MKCoordinateRegion.init(center: resd, span: span);
        mapView.setRegion(region, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self

        
        // REF: Tamaño de la barra de navegación de iOS 11: https://chariotsolutions.com/blog/post/large-titles-ios-11/
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // REF: Desactivar verificación de HTTPS: https://stackoverflow.com/a/30732693/5136913
        let url = "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.geojson"
        
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
                        var obj3 = obj["geometry"] as! NSDictionary
                        var obj4 = obj3["coordinates"] as! NSArray
                        let lon = obj4[1] as! Double

                        let lat = obj4[0] as! Double
                        let artwork = Artwork(title: (obj2["title"] as? String)!,
                                              locationName: (obj2["place"] as? String)!,
                                              discipline: "Sculpture",
                                              coordinate: CLLocationCoordinate2D(latitude: lon, longitude: lat),
                                              numero: 0
                        )
                        self.mapView.addAnnotation(artwork)

                    }
                }
        }
        

        
        //end: descargar datos
        
        let initialLocation = CLLocation(latitude: 0, longitude: 0)
        centerMapOnLocation(location: initialLocation)
        
        
        
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

extension UIViewController: MKMapViewDelegate {
    // 1
    public func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        print("Pointer")
        // 2
        guard let annotation = annotation as? Artwork else { return nil }
        // 3
        let identifier = "marker"
        var view: MKMarkerAnnotationView
        let button = UIButton(type: .detailDisclosure) as UIButton // button with info sign
        
        // 4
        if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            as? MKMarkerAnnotationView {
            dequeuedView.annotation = annotation
            view = dequeuedView
        } else {
            // 5
            view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            view.canShowCallout = true
            view.calloutOffset = CGPoint(x: -5, y: 5)
            view.rightCalloutAccessoryView = button
        }
        return view
    }
    
}

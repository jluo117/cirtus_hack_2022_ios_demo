//
//  ViewController.swift
//  barbell
//
//  Created by James Luo on 3/28/22.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var current_weight: UILabel!
    var current_weight_int = 45;
    override func viewDidLoad() {
        super.viewDidLoad()
        ping_local_host()
        // Do any additional setup after loading the view.
    }


    @IBAction func subtract_weight(sender: UIButton) {
        current_weight_int -= sender.tag
        current_weight.text = String(current_weight_int)
    }
    
    @IBAction func add_weight(sender: UIButton) {
        current_weight_int += sender.tag
        current_weight.text = String(current_weight_int)
    }
    func ping_local_host(){
        AF.request("https://swapi.dev/api/films").responseJSON{
            response in
            switch response.result{
            case .success(let value):
                let json = JSON(value)
                print(json)
            case .failure(let error):
                print(error)
            }
        }
        }
        
    
   
}


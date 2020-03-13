//
//  ViewController.swift
//  TrafficViewer
//
//  Created by 2020-2 on 13/03/20.
//  Copyright © 2020 iOS LAB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindToGreen(unwindSegue: UIStoryboardSegue){
        
    }

    @IBAction func buttonSegue(_ sender: Any) {
        if(textField.text == "Yellow"){
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
        }
}


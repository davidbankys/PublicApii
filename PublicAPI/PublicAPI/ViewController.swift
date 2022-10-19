//
//  ViewController.swift
//  PublicAPI
//
//  Created by David Bankole Abel on 2022-10-18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_DogData(_ sender: Any) {
        Dogs_Helper.fetchDir()
    }
    
    @IBAction func btn_MakeUpData(_ sender: Any) {
        Makeup_Helper.fetchDir()
    }

    @IBAction func btn_GenderData(_ sender: Any) {
        Gender_Helper.fetchDir()
    }
}


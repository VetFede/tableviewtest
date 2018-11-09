//
//  ViewController.swift
//  test_tableview2
//
//  Created by federico SPAGOCCI on 03/11/2018.
//  Copyright © 2018 Inoob_Spagocci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblautore: UILabel!
   
    var recipe:Recipe?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        lblautore.text = recipe?.methods
    }


}


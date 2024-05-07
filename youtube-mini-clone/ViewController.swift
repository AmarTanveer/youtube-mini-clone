//
//  ViewController.swift
//  youtube-mini-clone
//
//  Created by Amar Tanveer on 08/05/24.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.getVideos()
        // Do any additional setup after loading the view.
    }


}


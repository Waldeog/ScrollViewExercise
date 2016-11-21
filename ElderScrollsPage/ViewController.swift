//
//  ViewController.swift
//  ElderScrollsPage
//
//  Created by Valtteri Ranta on 21/11/2016.
//  Copyright © 2016 Valtteri Ranta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var images = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            images.append(UIImageView(image: image))
        }
        
        print("Count: \(images.count)")
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


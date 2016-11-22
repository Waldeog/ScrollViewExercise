//
//  ViewController.swift
//  ElderScrollsPage
//
//  Created by Valtteri Ranta on 21/11/2016.
//  Copyright © 2016 Valtteri Ranta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var controllerView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()
    let lastPage = 2
    let firstPage = 0
    var currentPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    override func viewDidAppear(_ animated: Bool) {
        
        var contentWidth: CGFloat = 0.0
        let scrollWidth = scrollView.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            contentWidth = scrollWidth * CGFloat(x + 1)
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)

    }
    
    @IBAction func detectSwipe(_ sender: UISwipeGestureRecognizer) {
        if (currentPage < lastPage && sender.direction == UISwipeGestureRecognizerDirection.left) {
            swipe(direction: 1)
        }
        if (currentPage > firstPage && sender.direction == UISwipeGestureRecognizerDirection.right) {
            swipe(direction: -1)
        }
        
    }
    
    func swipe(direction: Int) {
        currentPage += direction
        let point: CGPoint = CGPoint(x: scrollView.frame.size.width * CGFloat(currentPage), y: 0.0)
        scrollView.setContentOffset(point, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


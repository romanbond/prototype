//
//  ViewController.swift
//  PageTheScroll
//
//  Created by P18 Enviroment on 11/2/16.
//  Copyright © 2016 P18 Enviroment. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    
    var images = [UIImageView]()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var contentWidth: CGFloat = 0.0
        
        print("Scrollview width: \(ScrollView.frame.size.width)")
        
        let scrollWidth = ScrollView.frame.size.width
        
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            
            contentWidth += newX
            
            ScrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (ScrollView.frame.size.height / 2) - 75 , width: 150, height: 150)
            
        }
        
        
        ScrollView.clipsToBounds = false
        
        
        
        
        //ScrollView.backgroundColor = UIColor.purple
        
        
        ScrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        
    }


}


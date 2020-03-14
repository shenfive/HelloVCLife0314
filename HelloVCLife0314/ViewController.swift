//
//  ViewController.swift
//  HelloVCLife0314
//
//  Created by 申潤五 on 2020/3/14.
//  Copyright © 2020 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer:Timer!
    var counter = 0
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        var newView = UIView.init(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        newView.transform = CGAffineTransform(rotationAngle: CGFloat( 30 * M_PI / 180))
        newView.backgroundColor = UIColor.red
        newView.center = self.view.center
        self.view.addSubview(newView)

        
    }
    

}


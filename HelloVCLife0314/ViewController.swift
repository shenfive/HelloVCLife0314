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
    var counter = 0.0
    
    @IBOutlet weak var theSegment: UISegmentedControl!
    @IBOutlet weak var speedSlider: UISlider!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        var newView = UIView.init(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        newView.transform = CGAffineTransform(rotationAngle: 0)
        newView.backgroundColor = UIColor.red
        newView.center = self.view.center
        newView.layer.cornerRadius = 15
        newView.clipsToBounds = true
        self.view.addSubview(newView)
        timer = Timer.scheduledTimer(withTimeInterval: 0.03, repeats: true, block: { (theTimer) in
            self.rotateView(theView: newView)
        })

        
    }
    
    
    func rotateView(theView:UIView){
        let angle = CGFloat(counter * M_PI / 180)
        theView.transform = CGAffineTransform(rotationAngle: angle)
        
        switch theSegment.selectedSegmentIndex {
        case 0:
            counter += Double(speedSlider.value)
        case 1:
            break
        case 2:
            counter -= Double(speedSlider.value)
        default:
            break
        }
        
        
        
//        print(counter)
    }

    @IBAction func speedChanged(_ sender: UISlider) {
        print(sender.value)
    }
    @IBAction func seledSegment(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
    }
    @IBAction func enter(_ sender: UITextField) {
        print(sender.text)
    }
    @IBAction func enterValueChanged(_ sender: UITextField) {
        print(sender.text)
    }
}


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
    var counter = 1
    
    override func loadView() {
        super.loadView()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(setCounter(sender:)), userInfo: nil, repeats: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View Will Disappear")
    }

    @objc func setCounter(sender: Any?){
        print(counter)
        counter += 1
    }
    
    @IBAction func stopCounter(_ sender: Any) {
        timer.invalidate()
    }
}


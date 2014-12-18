//
//  ViewController.swift
//  AutoMultipleLineLabel
//
//  Created by Honghao Zhang on 2014-12-18.
//  Copyright (c) 2014 HonghaoZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: ZHAutoLinesLabel!
    @IBOutlet weak var constraintLabelWidth: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("viewDidLoad")
        label.contentInset = UIEdgeInsetsMake(10, 20, 10, 20)
    }

    @IBAction func changeWidth(sender: AnyObject) {
        constraintLabelWidth.constant = random(Int(UIScreen.mainScreen().bounds.width - 10 - label.contentInset.left - label.contentInset.right)) + label.contentInset.left + label.contentInset.right
        self.view.layoutIfNeeded()
    }
    
    @IBAction func changeContentInset(sender: AnyObject) {
        label.contentInset = UIEdgeInsetsMake(random(50), random(50), random(50), random(50))
    }
}

func random(range: Int) -> CGFloat {
    return CGFloat(arc4random_uniform(UInt32(range)))
}


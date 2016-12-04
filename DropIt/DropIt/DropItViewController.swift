//
//  DropItViewController.swift
//  DropIt
//
//  Created by Legolas.Invoker on 2016/12/4.
//  Copyright © 2016年 Legolas.Invoker. All rights reserved.
//

import UIKit

class DropItViewController: UIViewController
{

    @IBOutlet weak var gameView: DropItView! {
        didSet {
            gameView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(addDrop(_:))))
        }
    }
    
    func addDrop(gesture: UITapGestureRecognizer) {
        if gesture.state == .Ended {
            gameView.addDrop()
        }
    }

}

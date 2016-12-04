//
//  DropItView.swift
//  DropIt
//
//  Created by Legolas.Invoker on 2016/12/4.
//  Copyright © 2016年 Legolas.Invoker. All rights reserved.
//

import UIKit

class DropItView: UIView
{
    var squarePerRow = 10
    var dropSize : CGSize {
        let length = bounds.size.width / CGFloat(squarePerRow)
        return CGSize(width: length, height: length)
    }
    func addDrop() {
        let somenumber = CGFloat.random(squarePerRow)
        var somePoint = CGPoint.zero// (x: somenumber * dropSize.width, y: CGFloat(0))
        somePoint.x = somenumber * dropSize.width
        let someFrame = CGRect(origin: somePoint, size: dropSize)
        let drop = UIView(frame: someFrame)
        drop.backgroundColor = UIColor.random()
        addSubview(drop)
    }
    


}
extension CGFloat {
    static func random(let seed : Int)->CGFloat {
        return CGFloat( arc4random() % UInt32(seed))
    }
}
extension UIColor {
    static func random()->UIColor {
        switch arc4random() % 6 {
        case 0:
            return UIColor.redColor()
        case 1:
            return UIColor.greenColor()
        case 3:
            return UIColor.yellowColor()
        case 4:
            return UIColor.orangeColor()
        case 5:
            return UIColor.cyanColor()
        default:
            return UIColor.blueColor()
        }
    }
}
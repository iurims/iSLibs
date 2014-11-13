//
//  ISPositionCalculator.swift
//  iSLibs
//
//  Created by Iuri Menescal on 11/12/14.
//

import Foundation

class ISPositionCalculator {
    
    private var size:CGSize
    private var area:CGRect
    
    init(area:CGRect,elementSize:CGSize) {
        self.size = elementSize
        self.area = area
    }
    
    var center_x:CGFloat {
        get {
            return (self.area.size.width - size.width) / 2
        }
    }
    
    var center_y:CGFloat {
        get {
            return (self.area.size.height - size.height) / 2
        }
    }
    
    var float_right:CGFloat {
        return area.width - size.width
    }
    
    var float_left:CGFloat {
        return 0
    }
    
    var top_left:CGPoint {
        get {
            return CGPointMake(0, 0)
        }
    }
    
    var top_right:CGPoint {
        get {
            let X_Co:CGFloat = area.width - size.width
            return CGPointMake(X_Co, 0)
        }
    }
    
    var bottom_left:CGPoint {
        get {
            let Y_Co:CGFloat = area.height - size.height
            return CGPointMake(0, Y_Co)
        }
    }
    
    var bottom_right:CGPoint {
        get {
            let X_Co:CGFloat = area.width - size.width
            let Y_Co:CGFloat = area.height - size.height
            return CGPointMake(X_Co, Y_Co)
        }
    }
    
    
}

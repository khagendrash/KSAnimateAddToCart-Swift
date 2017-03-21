//
//  Helpers.swift
//  KSAnimateAddToCart
//
//  Created by Mac on 3/21/17.
//  Copyright © 2017 Home. All rights reserved.
//

import Foundation
import UIKit

class Helpers{
    
    // class function to move image to cart view on top header
    class func addToCart(from source:UIImageView, to target:UIView, parent:UIView){
    
        // get the snapshot if exists
        if let snapshot = source.snapshotView(afterScreenUpdates: true){
            snapshot.backgroundColor = UIColor.clear
            snapshot.frame = source.frame
            
            // add the snapshot to the parent view
            parent.addSubview(snapshot)
            parent.bringSubview(toFront: snapshot)
            
            // move the imageview snapshot to the cart view at header top right
            UIView.animate(withDuration: 0.7, animations: {
                snapshot.frame = target.frame
                snapshot.alpha = 0
            }, completion: { (finished) in
                snapshot.removeFromSuperview()
            })
        }
    }
    
    // class function to animate move image to cart view on top header
    class func addAndAnimateCart(from source:UIImageView, to target:UIView, parent:UIView){
        
        // get the snapshot
        if let snapshot = source.snapshotView(afterScreenUpdates: true){
            snapshot.backgroundColor = UIColor.clear
            snapshot.frame = source.frame
            
            // add the snapshot to the parent view
            parent.addSubview(snapshot)
            parent.bringSubview(toFront: snapshot)
            
            // animate and move the imageview to the cart view at header top right
            UIView.animate(withDuration: 0.7, animations: {
                snapshot.frame = target.frame
                snapshot.alpha = 0
                
                // scale the target cart view
                target.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
                
            }, completion: { (finished) in
                snapshot.removeFromSuperview()
                
                // restore the position of the cart view
                UIView.animate(withDuration: 0.3, animations: { 
                    target.transform = CGAffineTransform.init(scaleX: 1, y: 1)
                })
            })
        }
    }
}

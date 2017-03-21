//
//  MainController.swift
//  KSAnimateAddToCart
//
//  Created by Mac on 3/21/17.
//  Copyright © 2017 Home. All rights reserved.
//

import UIKit


class MainController: UIViewController {
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var cartView: UIView!
    @IBOutlet weak var lblCartTotal: UILabel!
    
    // outlets for product items
    @IBOutlet weak var item1: UIImageView!
    @IBOutlet weak var item2: UIImageView!
    @IBOutlet weak var item3: UIImageView!
    @IBOutlet weak var item4: UIImageView!
    
    var itemNumber: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // handler for add to cart button
    @IBAction func addToCart(_ sender: AnyObject?){
        
        itemNumber += 1
        
        if itemNumber > 4{
            itemNumber = 1
        }
        
        switch itemNumber{
            
            case 1:
                Helpers.addToCart(from: item1, to: self.cartView, parent: self.view)
            case 2:
                Helpers.addToCart(from: item2, to: self.cartView, parent: self.view)
            case 3:
                Helpers.addToCart(from: item3, to: self.cartView, parent: self.view)
            case 4:
                Helpers.addToCart(from: item4, to: self.cartView, parent: self.view)
            default:
                print("Invalid")
        }
        
        // update the cart total
        self.lblCartTotal.text = "$\(itemNumber * Int(arc4random_uniform(20)))"
    }
    
    // handler for animate shopping cart
    @IBAction func animateCart(_ sender: AnyObject?){
        
        itemNumber += 1
        
        if itemNumber > 4{
            itemNumber = 1
        }
        
        switch itemNumber{
            
        case 1:
            Helpers.addAndAnimateCart(from: item1, to: self.cartView, parent: self.view)
        case 2:
            Helpers.addAndAnimateCart(from: item2, to: self.cartView, parent: self.view)
        case 3:
            Helpers.addAndAnimateCart(from: item3, to: self.cartView, parent: self.view)
        case 4:
            Helpers.addAndAnimateCart(from: item4, to: self.cartView, parent: self.view)
        default:
            print("Invalid")
        }
        
        // update the cart total
        self.lblCartTotal.text = "$\(itemNumber * Int(arc4random_uniform(20)))"
    }
}

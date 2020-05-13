//
//  Bar03VC.swift
//  NavigationBar0513
//
//  Created by leslie on 5/13/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class Bar03VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Configuring the navigation bar and its items
        let nav = navigationController!
        nav.hidesBarsOnSwipe = true
        let bar = nav.navigationBar
        bar.barTintColor = UIColor.black
        let titleFont = UIFont(name: "Verdana-Bold", size: 25.0)
        let color = UIColor.cyan
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.black
        shadow.shadowOffset = CGSize(width: 2, height: 2)
        
        let attributes = [NSAttributedString.Key.font: titleFont, NSAttributedString.Key.foregroundColor: color, NSAttributedString.Key.shadow: shadow]
        bar.titleTextAttributes = attributes as [NSAttributedString.Key : Any]
        
        let item = navigationItem
        item.title = "Menu"
        
        let imagePortrait = UIImage(named: "buttonplus")
        let imageLandscape = UIImage(named: "buttonpluslandscape")
        let rightButton = UIBarButtonItem(image: imagePortrait, landscapeImagePhone: imageLandscape, style: .plain, target: self, action: #selector(self.printMessage))
        item.rightBarButtonItems = [rightButton]
        
        //Configuring back bar button item
        let button = UIBarButtonItem()
        button.title = "Close"
        item.backBarButtonItem = button
        
    }
    
    @objc func printMessage() {
        print("Message")
    }
    
}

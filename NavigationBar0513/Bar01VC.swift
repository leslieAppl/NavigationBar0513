//
//  ViewController.swift
//  NavigationBar0513
//
//  Created by leslie on 5/13/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class Bar01VC: UIViewController {
    
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

//Configuring the Toolbar from the view controller
        nav.isToolbarHidden = false
        nav.toolbar.barTintColor = UIColor.gray
        nav.toolbar.tintColor = UIColor.green

//Adding Toolbar Button from code
        var items = [UIBarButtonItem]()

        //Toolbar system button
        let systemButton = UIBarButtonItem(barButtonSystemItem: .play, target: self, action: #selector(self.printPlay))
        items.append(systemButton)
        
        //Add Flexible space between buttons
        let flexibalSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        items.append(flexibalSpace)

        //Custom Button
        let plainButton = UIBarButtonItem(title: "Pause", style: .plain, target: self, action: #selector(self.printPause))
        items.append(plainButton)

        self.toolbarItems = items //Display toolbar items.
    }

    @objc func printMessage() {
        print("Message")
    }
    
    @objc func printPlay() {
        print("Play")
    }
    
    @objc func printPause() {
        print("Pause")
    }

}


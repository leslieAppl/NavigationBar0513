//
//  Bar01B.swift
//  NavigationBar0513
//
//  Created by leslie on 5/13/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class Bar01B: UIViewController {
    
    @IBOutlet weak var myToolBar: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//Configuring the Toolbar from the view controller
        myToolBar.setBackgroundImage(UIImage(named: "backgroundbar"), forToolbarPosition: .bottom, barMetrics: .default)
        myToolBar.tintColor = UIColor.white
        
    }
    
}

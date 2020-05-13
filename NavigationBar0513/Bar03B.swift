//
//  Bar03B.swift
//  NavigationBar0513
//
//  Created by leslie on 5/13/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class Bar03B: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let item = navigationItem
        item.title = "Second View"

//Deactivating large titles
        navigationItem.largeTitleDisplayMode = .never
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

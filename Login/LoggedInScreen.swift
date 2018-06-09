//
//  LoggedInScreen.swift
//  Login
//
//  Created by Maciej Drozdowicz on 02/04/2018.
//  Copyright © 2018 Maciej Drozdowicz. All rights reserved.
//

import Foundation
import UIKit

class LoggedInScreen: UIViewController {
    @IBOutlet weak var usernameLabel: UILabel?
    var username: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameLabel?.text = username + "!"
    }
    
}

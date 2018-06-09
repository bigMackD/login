//
//  ViewController.swift
//  Login
//
//  Created by Maciej Drozdowicz on 01/04/2018.
//  Copyright © 2018 Maciej Drozdowicz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var IncorrectPassword: UILabel!
    @IBOutlet weak var UsernameTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let possibleUIView = segue.destination as? LoggedInScreen
        possibleUIView?.username = UsernameTextField.text!
      
    } 
    
    
    @IBAction func LogInTapped(_ sender: Any) {
        if UsernameTextField.text == "MackD" && PasswordTextField.text == "dupa123" {
            performSegue(withIdentifier: "Success", sender: nil)
        }
        else
        {
            IncorrectPassword.text = "Incorrect username or password!"
        }
    }
   
    

}


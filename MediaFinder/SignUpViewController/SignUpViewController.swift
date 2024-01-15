//
//  SignUpViewController.swift
//  MediaFinder
//
//  Created by ihab saad on 06/01/2024.
//

import UIKit

class SignUpViewController: UIViewController {
    
//    MARK: - Outlets -
    @IBOutlet weak var userNameTextFields: UITextField!
    @IBOutlet weak var emailTextFields: UITextField!
    @IBOutlet weak var locationTextFields: UITextField!
    @IBOutlet weak var passwordTextFields: UITextField!
    
//    MARK: - loadNip -
     init() {
        super.init(nibName: String(describing: Self.self), bundle: nil)
    }
     required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

//    MARK: - Life Cycle Methods -
    override func viewDidLoad() {
        super.viewDidLoad()
    }
//    MARK: - Action -
    @IBAction func prsentSignInVc(_ sender: Any) {
        if checkDataIsNotSpaceAndIsEmpty() {
            PresentSignIn()
        } else {
            userNameTextFields.text = ""
            emailTextFields.text = ""
            locationTextFields.text = ""
            passwordTextFields.text = ""
            print("is Data faild")
        }
    }
}

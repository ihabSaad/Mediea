//
//  SignInViewController.swift
//  MediaFinder
//
//  Created by ihab saad on 06/01/2024.
//

import UIKit


class SignInViewController: UIViewController {
    
//    MARK: - Outlets-
    @IBOutlet weak var emailTextFields: UITextField!
    @IBOutlet weak var passwordTextFields: UITextField!
    
//    MARK: - proprties -
    var eamil: String?
    var passsword: String?
    
//    MARK: - loadNip -
    init() {
        super.init(nibName: String(describing: Self.self), bundle: nil)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
//    MARK: - Life cycle Methods -
    override func viewDidLoad() {
        super.viewDidLoad()
        getDataUserDef()
    }
    
//    MARK: - Action -
    @IBAction func presentHomeVc(_ sender: Any) {
        if isDataEnteredNotSpace_IsEmpty() {
            checkData()
        } else {
           showAlart(message: "Is Data Faild ")
        }
    }
}


//
//  LoginViewController.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 07/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var viewModel: LoginViewModel = LoginViewModel()

    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var feedbackLabel: UILabel!
    @IBOutlet weak var activitIndicator: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.start()
    }

}



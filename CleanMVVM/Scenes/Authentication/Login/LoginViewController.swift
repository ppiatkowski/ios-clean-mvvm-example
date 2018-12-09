//
//  LoginViewController.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 07/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import UIKit
import Bond

class LoginViewController: UIViewController {
//    var presenter: LoginPresenterProtocol?
    var viewModel: LoginViewModel = LoginViewModel()

    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var feedbackLabel: UILabel!
    @IBOutlet weak var activitIndicator: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()

        bindViewModel()
        viewModel.start()
    }

    private func bindViewModel() {
        let something = loginButton.reactive.tap.observeNext {
            print("login tapped ")
        }
        print(something)
    }

}


extension LoginViewController {
//    func enterCredentials(phoneNumber: String, password: String) {
//        phoneNumberTextField.text = phoneNumber
//        passwordTextField.text = password
//    }
//
//    func showMessage(_ message: String?) {
//        feedbackLabel.text = message
//    }
//
//    func toggleButtons(enabled: Bool) {
//        loginButton.isEnabled = enabled
//        registerButton.isEnabled = enabled
//    }
//
//    func showActivityIndicator() {
//        activityIndicator.startAnimating()
//    }
//
//    func hideActivityIndicator() {
//        activityIndicator.stopAnimating()
//    }
}

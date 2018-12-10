//
//  LoginViewController.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 07/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var viewModel: LoginViewModelProtocol?

    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var feedbackLabel: UILabel!
    @IBOutlet weak var activitIndicator: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()

        bindUI()
    }

    @IBAction func loginButtonTouchUpInside(_ sender: Any) {
        viewModel?.loginButtonTapped(phoneNumber: phoneNumberTextField.text,
                                     password: passwordTextField.text)
    }

    @IBAction func registerButtonTouchUpInside(_ sender: Any) {
        viewModel?.registerButtonTapped()
    }

    private func bindUI() {
        viewModel?.feedback.bindAndFire { [weak self] message in
            self?.feedbackLabel.text = message
        }

        viewModel?.isLoading.bindAndFire { [weak self] isLoading in
            guard let strongSelf = self else {
                return
            }
            if isLoading {
                strongSelf.activitIndicator.startAnimating()
                strongSelf.registerButton.isEnabled = false
                strongSelf.loginButton.isEnabled = false
            }
            else {
                strongSelf.activitIndicator.stopAnimating()
                strongSelf.registerButton.isEnabled = true
                strongSelf.loginButton.isEnabled = true
            }
        }
    }
}



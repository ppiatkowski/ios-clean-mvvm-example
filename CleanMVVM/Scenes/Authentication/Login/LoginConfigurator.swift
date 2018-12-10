//
//  LoginConfigurator.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 07/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

class LoginConfigurator {

    func configure(delegate: AuthCoordinatorDelegate) -> LoginViewController {
        let viewModel = LoginViewModel(delegate: delegate)
        let viewController = LoginViewController.instantiate()
        viewController.viewModel = viewModel
        return viewController
    }
}

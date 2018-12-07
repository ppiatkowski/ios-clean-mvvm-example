//
//  LoginConfigurator.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 07/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

class LoginConfigurator {

    func configure(coordinator: AuthCoordinator) -> LoginViewController {
        let viewController = LoginViewController.instantiate()
        let loginViewModel = LoginViewModel(/*view: viewController,*/ coordinator: coordinator)
        viewController.viewModel = loginViewModel
        return viewController
    }
}

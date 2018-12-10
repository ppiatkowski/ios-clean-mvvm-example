//
//  RegisterConfigurator.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 10/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

class RegisterConfigurator {

    func configure(delegate: AuthCoordinatorDelegate) -> RegisterViewController {
        let viewModel = RegisterViewModel(delegate: delegate)
        let viewController = RegisterViewController.instantiate()
        viewController.viewModel = viewModel
        return viewController
    }
}

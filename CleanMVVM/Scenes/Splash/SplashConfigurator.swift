//
//  SplashConfigurator.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 07/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

class SplashConfigurator {

    func configure(coordinator: RootCoordinator) -> SplashViewController {
        let viewController = SplashViewController.instantiate()
        let viewModel = SplashViewModel(/*view: viewController, */delegate: coordinator)
        viewController.viewModel = viewModel
        return viewController
    }
}

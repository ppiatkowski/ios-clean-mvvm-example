//
//  DashboardConfigurator.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 09/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

class DashboardConfigurator {
    
    func configure(model: Customer, delegate: AppCoordinatorDelegate) -> DashboardViewController {
        let viewModel = DashboardViewModel(model: model, delegate: delegate)
        let viewController = DashboardViewController.instantiate()
        viewController.viewModel = viewModel
        return viewController
    }
}

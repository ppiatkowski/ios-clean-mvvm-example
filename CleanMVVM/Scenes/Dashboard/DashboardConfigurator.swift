//
//  DashboardConfigurator.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 09/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

class DashboardConfigurator {
    
    func configure(model: Customer, coordinatorDelegate: AppCoordinatorDelegate) -> DashboardViewController {
        let viewModel = DashboardViewModel(model: model, coordinatorDelegate: coordinatorDelegate)
        let viewController = DashboardViewController.instantiate()
        viewController.viewModel = viewModel
        return viewController
    }
}

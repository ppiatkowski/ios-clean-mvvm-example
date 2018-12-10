//
//  AppCoordinator.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 07/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import UIKit

protocol AppCoordinatorDelegate: AnyObject {
}

/**
 * AppCoordinator handles navigation of the app. It can have child coordinators for features.
 */
class AppCoordinator: Coordinator {
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let model = Customer(name: "John Appleseed", status: "ACTIVE")
        let viewController = DashboardConfigurator().configure(model: model, coordinatorDelegate: self)
        navigationController.pushViewController(viewController, animated: false)
    }
}

extension AppCoordinator: AppCoordinatorDelegate {
    
}

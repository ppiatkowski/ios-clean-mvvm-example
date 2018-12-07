//
//  AppCoordinator.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 07/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import UIKit

/**
 * AppCoordinator handles navigation of the app. Can have child coordinators for features.
 */
class AppCoordinator: Coordinator {
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
//        let model = DashboardModel(title: "My Dashboard", description: "This is a sample description")
//        let viewController = DashboardConfigurator().configure(model: model, coordinator: self)
//        navigationController.pushViewController(viewController, animated: false)
    }

    func navigateToMyBills() {
//        let myBillsViewController = MyBillViewController.instantiate()
//        navigationController.pushViewController(myBillsViewController, animated: true)
    }
}

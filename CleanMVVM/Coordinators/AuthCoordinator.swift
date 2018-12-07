//
//  AuthCoordinator.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 07/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import UIKit

class AuthCoordinator: Coordinator {
    var navigationController: UINavigationController
    fileprivate weak var delegate: RootCoordinatorDelegate?

    init(navigationController: UINavigationController, delegate: RootCoordinatorDelegate) {
        self.navigationController = navigationController
        self.delegate = delegate
    }

    func start() {
        let viewController = LoginConfigurator().configure(coordinator: self)
        navigationController.pushViewController(viewController, animated: false)
    }

    func navigateToRegisterUser() {
//        let viewController = RegisterConfigurator().configure(coordinator: self)
//        navigationController.pushViewController(viewController, animated: true)
    }

    func exit() {
        delegate?.userDidLogIn()
    }
}

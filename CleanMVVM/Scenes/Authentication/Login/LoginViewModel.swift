//
//  LoginViewModel.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 07/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

class LoginViewModel {
    fileprivate weak var coordinator: AuthCoordinator?
    fileprivate var loginUseCase = LoginUseCase()

    init(/*view: LoginViewProtocol, coordinator: AuthCoordinator*/) {
//        self.view = view
//        self.coordinator = coordinator
    }
}

extension LoginViewModel {

    func start() {
//        view?.toggleButtons(enabled: true)
    }

//    func loginButtonTapped(phoneNumber: String?, password: String?) {
//        guard let phoneNumber = phoneNumber, phoneNumber.isEmpty == false else {
//            view?.showMessage("Enter phone number")
//            return
//        }
//
//        guard let password = password, password.isEmpty == false else {
//            view?.showMessage("Enter password")
//            return
//        }
//
//        view?.showMessage(nil)
//        view?.showActivityIndicator()
//        view?.toggleButtons(enabled: false)
//        loginUseCase.login(withPhoneNumber: phoneNumber, password: password) { [weak self] success in
//            guard let strongSelf = self else {
//                return
//            }
//            strongSelf.view?.hideActivityIndicator()
//            strongSelf.view?.toggleButtons(enabled: true)
//            if success {
//                print("Logged in successfully")
//                strongSelf.view?.showMessage(nil)
//                strongSelf.coordinator?.exit()
//
//            } else {
//                print("Failed to log in")
//                strongSelf.view?.showMessage("Invalid phone number and/or password")
//            }
//        }
//    }

//    func registerButtonTapped() {
//        coordinator?.navigateToRegisterUser()
//    }
}

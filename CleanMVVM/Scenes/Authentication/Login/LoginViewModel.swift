//
//  LoginViewModel.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 07/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

protocol LoginViewModelProtocol {
    var feedback: Dynamic<String> { get }
    var isLoading: Dynamic<Bool> { get }

    func loginButtonTapped(phoneNumber: String?, password: String?)
    func registerButtonTapped()
}

class LoginViewModel: LoginViewModelProtocol {
    fileprivate weak var coordinatorDelegate: AuthCoordinatorDelegate?
    fileprivate var loginUseCase = LoginUseCase()

    var feedback: Dynamic<String> = Dynamic("")
    var isLoading: Dynamic<Bool> = Dynamic(false)

    init(delegate: AuthCoordinatorDelegate) {
        coordinatorDelegate = delegate
    }

    func loginButtonTapped(phoneNumber: String?, password: String?) {
        guard let phoneNumber = phoneNumber, phoneNumber.isEmpty == false else {
            feedback.value = "Enter phone number"
            return
        }

        guard let password = password, password.isEmpty == false else {
            feedback.value = "Enter password"
            return
        }

        feedback.value = ""
        isLoading.value = true
        loginUseCase.login(withPhoneNumber: phoneNumber, password: password) { [weak self] success in
            guard let strongSelf = self else {
                return
            }
            strongSelf.isLoading.value = false
            if success {
                print("Logged in successfully")
                strongSelf.feedback.value = ""
                strongSelf.coordinatorDelegate?.userDidLogIn()
            } else {
                print("Failed to log in")
                strongSelf.feedback.value = "Invalid phone number and/or password"
            }
        }
    }

    func registerButtonTapped() {
        coordinatorDelegate?.userDidTapRegister()
    }
}

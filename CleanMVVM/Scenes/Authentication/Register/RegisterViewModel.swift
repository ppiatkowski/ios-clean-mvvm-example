//
//  RegisterViewModel.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 10/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

protocol RegisterViewModelProtocol {

}

class RegisterViewModel: RegisterViewModelProtocol {
    fileprivate weak var coordinatorDelegate: AuthCoordinatorDelegate?

    init(delegate: AuthCoordinatorDelegate) {
        coordinatorDelegate = delegate
    }

}

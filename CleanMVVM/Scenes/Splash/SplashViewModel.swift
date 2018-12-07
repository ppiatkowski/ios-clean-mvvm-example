//
//  SplashViewModel.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 07/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

class SplashViewModel {
    fileprivate weak var delegate: RootCoordinatorDelegate?

    init(delegate: RootCoordinatorDelegate) {
        self.delegate = delegate
    }
}

extension SplashViewModel {

    func start() {
        // normal app would perform some startup logic here (using a Use Case)
        // we're just going to pretend something is happening for some time
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3.0) { [weak self] in
            guard let strongSelf = self else {
                return
            }

            // in normal app we would check if we need to authenticate the user again and handle 'remember me'.
            //  This would be business logic and should be done via Use Case (for example of Use Case see LoginUseCase class)
            strongSelf.delegate?.splashDidFinish()
        }
    }
}

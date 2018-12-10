//
//  DashboardViewModel.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 09/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

protocol DashboardViewModelProtocol {
    var customer: Dynamic<Customer> { get }
    var isFetching: Dynamic<Bool> { get }
    
    func refreshButtonTapped()
}

class DashboardViewModel: DashboardViewModelProtocol {
    fileprivate weak var coordinatorDelegate: AppCoordinatorDelegate?
    fileprivate var fetchCustomerUseCase = FetchCustomerUseCase()
    
    var customer: Dynamic<Customer>
    var isFetching: Dynamic<Bool>
    
    init(model: Customer, coordinatorDelegate: AppCoordinatorDelegate) {
        customer = Dynamic<Customer>(model)
        isFetching = Dynamic<Bool>(false)
        self.coordinatorDelegate = coordinatorDelegate
    }

    func refreshButtonTapped() {
        isFetching.value = true
        fetchCustomerUseCase.execute { [weak self] newCustomer in
            guard let strongSelf = self, let newCustomer = newCustomer else {
                return
            }
            strongSelf.customer.value = newCustomer
            strongSelf.isFetching.value = false
        }
    }
}

//
//  DashboardViewController.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 09/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {
    var viewModel: DashboardViewModelProtocol?
    
    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var customerNameLabel: UILabel!
    @IBOutlet weak var customerStatusLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindUI()
    }
    
    private func bindUI() {
        viewModel?.customer.bindAndFire { [weak self] customer in
            // this closure will be fired every time viewModel.customer is assigned new value
            guard let strongSelf = self else {
                return
            }
            strongSelf.customerNameLabel.text = customer.name
            strongSelf.customerStatusLabel.text = customer.status
        }
        
        viewModel?.isFetching.bindAndFire { [weak self] isFetching in
            guard let strongSelf = self else {
                return
            }
            if isFetching {
                strongSelf.refreshButton.isEnabled = false
                strongSelf.activityIndicator.startAnimating()
            }
            else {
                strongSelf.refreshButton.isEnabled = true
                strongSelf.activityIndicator.stopAnimating()
            }
        }
    }
    
    @IBAction func refreshButtonTapped(_ sender: Any) {
        viewModel?.refreshButtonTapped()
    }
}

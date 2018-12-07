//
//  SplashViewController.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 07/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    var viewModel: SplashViewModel? // protocol maybe?

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel?.start()
    }
}


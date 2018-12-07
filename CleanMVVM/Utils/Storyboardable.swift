//
//  Storyboardable.swift
//  CleanMVVM
//
//  Created by Paweł Piątkowski on 07/12/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//
//  Attribution: Author of this file is eddiesaenz.net (https://codeburst.io/simpler-ios-storyboard-instantiation-97ca4bfb63bd)

import UIKit

protocol Storyboardable: class {
    static var defaultStoryboardName: String { get }
}

extension Storyboardable where Self: UIViewController {
    static var defaultStoryboardName: String {
        return String(describing: self)
    }

    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: defaultStoryboardName, bundle: nil)

        guard let vc = storyboard.instantiateInitialViewController() as? Self else {
            fatalError("Could not instantiate initial storyboard with name: \(defaultStoryboardName)")
        }

        return vc
    }
}

// Makes every UIViewController automatically implement Storyboardable by default
extension UIViewController: Storyboardable { }

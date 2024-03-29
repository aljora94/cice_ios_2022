//
//  RegistroCoordinator.swift
//  MiUserDefault
//
//  Created by Andres Alberto Yagüe on 26/1/22.
//

import UIKit

final class RegistroCoordinator {
    
    // Wildcard - Comodin
    static func navigation() -> UINavigationController {
        let navVC = UINavigationController (rootViewController: view() ?? UIViewController())
        return navVC
    }
    
    static func view() -> UIViewController? {
        let vc = RegistroViewController()
        return vc
    }
    
}

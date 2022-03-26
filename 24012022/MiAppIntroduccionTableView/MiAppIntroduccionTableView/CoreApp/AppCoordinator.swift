//
//  AppCoordinator.swift
//  MiAppIntroduccionTableView
//
//  Created by Andres Alberto Yagüe on 24/1/22.
//

import UIKit

protocol AppCoordinatorProtocol {
    func setPrincipalViewController(window: UIWindow)
}

final class AppCoordinator {
    var actualViewController: UIViewController?
}

extension AppCoordinator: AppCoordinatorProtocol {
    func setPrincipalViewController(window: UIWindow) {
        self.actualViewController = HometabBarCoordinator.tabBarController()
        window.rootViewController = self.actualViewController
        window.makeKeyAndVisible()
    }
}

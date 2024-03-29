//
//  HomeViewCoordinator.swift
//  MiUserDefault
//
//  Created by Andres Alberto Yagüe on 27/1/22.
//

import UIKit

final class HomeViewCoordinator {
    
    
    
    static func homeView() -> UITabBarController {
        let homeVC = HomeViewController()
        
        let listaCochesVC = ListCochesCoordinator.navigation()
        let listaPostVC = LIstaPostsCoordinator.navigation()
        
        let iconCoches = UITabBarItem(title: "Coches",
                                      image: UIImage(systemName: "house"),
                                      selectedImage: UIImage(systemName: "house.fill"))
        
        let iconPosts = UITabBarItem(title: "Post",
                                     image: UIImage(systemName: "house"),
                                     selectedImage: UIImage(systemName: "house.fill"))
        
        listaCochesVC.tabBarItem = iconCoches
        listaPostVC.tabBarItem = iconPosts
        
        
        homeVC.viewControllers = [listaCochesVC, listaPostVC]
        
        // TODO: - tarea para los alumnos
        var vc = RegistroCoordinator.view()
        vc = nil
        
        return homeVC
    }

}

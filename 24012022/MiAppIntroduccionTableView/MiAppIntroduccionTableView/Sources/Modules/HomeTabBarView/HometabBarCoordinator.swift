//
//  HometabBarCoordinator.swift
//  MiAppIntroduccionTableView
//
//  Created by Andres Alberto Yagüe on 24/1/22.
//

import UIKit

final class HometabBarCoordinator {
    
    static func tabBarController() -> UITabBarController {
        
        let tabVC = HometabBarViewController()
        
        // Controladores
        let listaMeses = ListaCochesCoordinator.navigation()
        let listaCoches = ListSuperCochesCoordinator.navigation()
        let listaPerfilPost = ListaPerfilPostCoordinator.navigation()
        
        
        // iconos
        let listaMesesIcon = UITabBarItem(title: "Meses",
                                          image: UIImage(systemName: "house"),
                                          selectedImage:  UIImage(systemName: "house.fill"))
        
        let listaCochesIcon = UITabBarItem(title: "Coches",
                                           image: UIImage(systemName: "house"),
                                           selectedImage: UIImage(systemName: "house.fill"))
        
        let listaPerfilPostIcon = UITabBarItem(title: "Feed",
                                           image: UIImage(systemName: "person"),
                                           selectedImage: UIImage(systemName: "person.fill"))
        
        // asignar el icono al controlador
        listaMeses.tabBarItem = listaMesesIcon
        listaCoches.tabBarItem = listaCochesIcon
        listaPerfilPost.tabBarItem = listaPerfilPostIcon
        
        
        
        // Asignamos el array de controladores y su orden
        tabVC.viewControllers = [listaMeses, listaCoches, listaPerfilPost]
        return tabVC
    }
    
}

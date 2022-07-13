//
//  MainTabBarController.swift
//  Twitter App
//
//  Created by Rahmetullah on 8.07.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
   
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        self.tabBar.isTranslucent = false
        configure()
      
        
    }
// MARK: - Helpers
    func configure() {
        let home = HomeVC()
        let nav1 = templateNavController(image: UIImage(systemName: "house"), rootViewController: home)
        
        nav1.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        let explore = ExploreVC()
        let nav2 = templateNavController(image: UIImage(systemName: "magnifyingglass"), rootViewController: explore)
        
       
        let spaces = SpacesVC()
        let nav3 = templateNavController(image: UIImage(systemName: "circle.hexagongrid"), rootViewController: spaces)
        
        
        let notifications = NotificationVC()
        let nav4 = templateNavController(image: UIImage(systemName: "bell"), rootViewController: notifications)
        nav4.tabBarItem.selectedImage = UIImage(systemName: "bell.fill")
        
        let messages = MessagesVC()
        let nav5 = templateNavController(image: UIImage(systemName: "envelope"), rootViewController: messages)
        
        nav5.tabBarItem.selectedImage = UIImage(systemName: "envelope.fill")
        viewControllers = [nav1,nav2,nav3,nav4,nav5]
    }
    func templateNavController(image: UIImage?, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        return nav
        
    }
    

}


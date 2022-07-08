//
//  MainTabBarController.swift
//  Twitter App
//
//  Created by Rahmetullah on 8.07.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
   
    
    let vc1 = HomeVC()
    let vc2 = ExploreVC()
    let vc3 = SpacesVC()
    let vc4 = NotificationVC()
    let vc5 = MessagesVC()
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        self.tabBar.isTranslucent = false
        configure()
      
        
    }
// MARK: - Helpers
    func configure() {
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc1.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        vc2.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc3.tabBarItem.image = UIImage(systemName: "circle.hexagongrid")
        vc4.tabBarItem.image = UIImage(systemName: "bell")
        vc4.tabBarItem.selectedImage = UIImage(systemName: "bell.fill")
        vc5.tabBarItem.image = UIImage(systemName: "envelope")
        vc5.tabBarItem.selectedImage = UIImage(systemName: "envelope.fill")
        viewControllers = [vc1,vc2,vc3,vc4,vc5]
    }
    

}


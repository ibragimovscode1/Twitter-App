//
//  SceneDelegate.swift
//  Twitter App
//
//  Created by Rahmetullah on 8.07.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    var tabBar = MainTabBarController()
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
      
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.windowScene = windowScene
        window?.makeKeyAndVisible()
        window?.rootViewController = MainTabBarController()
        
        
        
      
        
        
    }

 


}


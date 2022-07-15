//
//  MainTabBarController.swift
//  Twitter App
//
//  Created by Rahmetullah on 8.07.2022.
//

import UIKit
import Firebase

class MainTabBarController: UITabBarController {
    //MARK: - Properties
    let actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.backgroundColor = .twitterBlue
        button.setImage(UIImage(named: "new_tweet"), for: .normal)
        button.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
        return button
    }()
    
    
    //MARK: - LifeCycle
        override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.tabBar.isTranslucent = false
    // logUserOut()
        authenticateUserAndConfigureUI()
      
      
        
    }
    //MARK: -  API
    func authenticateUserAndConfigureUI() {
        
        if Auth.auth().currentUser == nil {
            DispatchQueue.main.async {
                let nav = UINavigationController(rootViewController: LoginVC())
                nav.modalPresentationStyle = .fullScreen
                self.present(nav, animated: true, completion: nil)
            }
            print("Debug: user is not logged in")
        } else {
            configureVC()
            configureUI()
        }
        
    }
    func logUserOut() {
        do {
            try Auth.auth().signOut()
            print("loged out")
        } catch let error {
            print("DEBUG: Failed to sign out with error  \(error.localizedDescription)")
        }
    }
   
    //MARK: - Selectors
    
    @objc func actionButtonTapped() {
        print("gggg")
    }
    
// MARK: - Helpers
    func configureUI() {
        view.addSubview(actionButton)
        actionButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingBottom: 64, paddingRight: 16, width: 56, height: 56)
        actionButton.layer.cornerRadius = 56/2
    }
    
    func configureVC() {
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


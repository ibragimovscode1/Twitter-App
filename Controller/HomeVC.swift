//
//  HomeVC.swift
//  Twitter App
//
//  Created by Rahmetullah on 8.07.2022.
//

import UIKit

class HomeVC: UIViewController {
    //MARK: - Properties
    
    //MARK: - Lifecycle
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
       }
    //MARK: - Helpers
    func configureUI() {
        let imageView = UIImageView(image: UIImage(named: "twitter_logo_blue"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
        
    }

}

//
//  MessagesVC.swift
//  Twitter App
//
//  Created by Rahmetullah on 8.07.2022.
//

import UIKit

class MessagesVC: UIViewController {
    //MARK: - Properties

    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

       configureUI()
    }
    
    //MARK: Helpers
    func configureUI() {
        navigationItem.title = "Messages"
        
    }



}

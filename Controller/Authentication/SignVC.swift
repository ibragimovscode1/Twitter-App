//
//  SignVC.swift
//  Twitter App
//
//  Created by Rahmetullah on 14.07.2022.
//

import UIKit
class SignVC: UIViewController {
    private let imagePicker = UIImagePickerController()
    
    //MARK: - Properties
    private let plusPhotoButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "plus_photo"), for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(handleProfilePhoto), for: .touchUpInside)
        return button
        }()
    private lazy var emailContainerView: UIView = {
        let view = Utilities().inputContainerView(withImage: UIImage(named: "ic_mail_outline_white_2x-1")!, textField: emailTextField)
        return view
    }()
    
    private lazy var passwordContainerView: UIView = {
        let view = Utilities().inputContainerView(withImage: UIImage(named: "ic_lock_outline_white_2x")!, textField: passwordTextField)
        return view
    }()
    
    private let emailTextField: UITextField = {
        let tf = Utilities().textField(withPlaceholder: "Email")
        return tf
    }()
   
    private let passwordTextField: UITextField = {
        let tf = Utilities().textField(withPlaceholder: "Password")
        tf.isSecureTextEntry = true
        
        return tf
    }()
    private lazy var fullNameContainerView: UIView = {
        let view = Utilities().inputContainerView(withImage: UIImage(systemName:  "person")!, textField: fullNameTextField)
        return view
    }()
    
    private lazy var userNameContainerView: UIView = {
        let view = Utilities().inputContainerView(withImage: UIImage(systemName:  "person")!, textField: userNameTextField)
        return view
    }()
   
    private let fullNameTextField: UITextField = {
        let tf = Utilities().textField(withPlaceholder: "Full Name")
        return tf
    }()
   
    private let userNameTextField: UITextField = {
        let tf = Utilities().textField(withPlaceholder: "Username")
     
        
        return tf
    }()
   
    private let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.twitterBlue, for: .normal)
        button.backgroundColor = .white
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(handleSignIn), for: .touchUpInside)
        return button
    }()
  
    private let alreadyHaveAccountButton: UIButton = {
        let button = Utilities().attributedButton("Already have an account?", "  Log In")
        button.addTarget(self, action: #selector(handleShowLogIn), for: .touchUpInside)
        
        return button
    }()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
  
    }
    //MARK: - Selectors
    @objc func handleShowLogIn() {
        navigationController?.popViewController(animated: true)
    }
    @objc func handleProfilePhoto() {
        present(imagePicker, animated: true, completion: nil)
        
    }
    @objc func handleSignIn() {
        
    }
    
    //MARK: - Helpers
    func configureUI() {
        view.backgroundColor = .twitterBlue
        view.addSubview(plusPhotoButton)
        plusPhotoButton.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor)
        plusPhotoButton.setDimensions(width: 128, height: 128)
        
        let stack = UIStackView(arrangedSubviews: [emailContainerView,
                                                   passwordContainerView,
                                                   fullNameContainerView,
                                                   userNameContainerView,
                                                   signUpButton])
        stack.axis = .vertical
        stack.spacing = 20
        stack.distribution = .fillEqually
        
        
        view.addSubview(stack)
        stack.anchor(top: plusPhotoButton.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor,paddingTop: 32, paddingLeft: 32, paddingRight: 32)
        
        view.addSubview(alreadyHaveAccountButton)
        alreadyHaveAccountButton.anchor(left: view.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingLeft: 40,  paddingRight: 40)
    }
    
    
}

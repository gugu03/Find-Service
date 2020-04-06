//
//  LoginViewController.swift
//  Find Service
//
//  Created by Luis Gustavo Oliveira Silva on 16/03/20.
//  Copyright © 2020 Luis Gustavo Oliveira Silva. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        setupView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.isHidden = true
        
    }
    
    @objc func actionButtonLogin () {
      
    }
    
    @objc func actionButtonForgotPassword () {
         let forgotPasswordViewController = ForgotPasswordViewController()
         self.present(forgotPasswordViewController, animated: true, completion: nil)
       }
    
    @objc func actionButtonRegister() {
        let registerViewController = RegisterViewController()
        self.navigationController?.pushViewController(registerViewController, animated: true)
    }
    
    private lazy var imageLogo: UIImageView = {
        let imageLogo = UIImageView()
        imageLogo.image = UIImage(named: "findService")
        return imageLogo
    }()
    
    private lazy var labelEmail: UILabel = {
        let labelEmail = UILabel()
        labelEmail.textColor = #colorLiteral(red: 0.1725490196, green: 0, blue: 0.2431372549, alpha: 1)
        labelEmail.text = "Email:"
        labelEmail.font = .systemFont(ofSize: 20)
        labelEmail.numberOfLines = 0
        labelEmail.translatesAutoresizingMaskIntoConstraints = false
        return labelEmail
    }()
    
    private lazy var textFieldEmail: UITextField = {
        let textFieldEmail = UITextField(frame: .zero)
        textFieldEmail.textColor = #colorLiteral(red: 0.1725490196, green: 0, blue: 0.2431372549, alpha: 1)
        textFieldEmail.clipsToBounds = true
        textFieldEmail.layer.cornerRadius = 5
        return textFieldEmail
    }()
    
    private lazy var viewEmail: UIView = {
        let viewEmail = UIView()
        viewEmail.backgroundColor = #colorLiteral(red: 0.1725490196, green: 0, blue: 0.2431372549, alpha: 1)
        return viewEmail
    }()
    
    private lazy var labelPassword: UILabel = {
        let labelPassword = UILabel()
        labelPassword.textColor = #colorLiteral(red: 0.1725490196, green: 0, blue: 0.2431372549, alpha: 1)
        labelPassword.text = "Senha:"
        labelPassword.font = .systemFont(ofSize: 20)
        labelPassword.numberOfLines = 0
        labelPassword.translatesAutoresizingMaskIntoConstraints = false
        return labelPassword
    }()
    
    private lazy var textFieldPassword: UITextField = {
        let textFieldPassword = UITextField(frame: .zero)
        textFieldPassword.textColor = #colorLiteral(red: 0.1725490196, green: 0, blue: 0.2431372549, alpha: 1)
        textFieldPassword.clipsToBounds = true
        textFieldPassword.layer.cornerRadius = 5
        return textFieldPassword
    }()
    
    private lazy var viewPassword: UIView = {
        let viewPassword = UIView()
        viewPassword.backgroundColor = #colorLiteral(red: 0.1725490196, green: 0, blue: 0.2431372549, alpha: 1)
        return viewPassword
    }()
    
    private lazy var buttonForgotPassword: UIButton = {
        let buttonForgotPassword = UIButton()
        buttonForgotPassword.setTitleColor(#colorLiteral(red: 0.1725490196, green: 0, blue: 0.2431372549, alpha: 1), for: .normal)
        buttonForgotPassword.setTitle("Esqueci minha senha!", for: .normal)
         buttonForgotPassword.addTarget(self, action: #selector(actionButtonForgotPassword), for: .touchUpInside)
        return buttonForgotPassword
    }()
    
    private lazy var buttonLogin: UIButton = {
        let buttonLogin = UIButton(frame: .zero)
        buttonLogin.setTitle("Entrar", for: .normal)
        buttonLogin.backgroundColor = #colorLiteral(red: 0.1725490196, green: 0, blue: 0.2431372549, alpha: 1)
        buttonLogin.clipsToBounds = true
        buttonLogin.layer.cornerRadius = 10
        buttonLogin.addTarget(self, action: #selector(actionButtonLogin), for: .touchUpInside)
        return buttonLogin
    }()
    
    private lazy var labelSocial: UILabel = {
        let labelSocial = UILabel()
        labelSocial.text = "Entrar com suas redes sociais"
        labelSocial.textColor = #colorLiteral(red: 0.1725490196, green: 0, blue: 0.2431372549, alpha: 1)
        labelSocial.font = .systemFont(ofSize: 20)
        labelSocial.numberOfLines = 0
        return labelSocial
    }()
    
    private lazy var imageFacebook: UIImageView = {
        let imageFacebook = UIImageView()
        imageFacebook.image = UIImage(named: "facebook")
        return imageFacebook
    }()
    
    private lazy var imageInstagram: UIImageView = {
        let imageInstagram = UIImageView()
        imageInstagram.image = UIImage(named: "instagram")
        return imageInstagram
    }()
    private lazy var viewRedesSociais: UIView = {
        let viewRedesSociais = UIView()
        return viewRedesSociais
    }()
    
    private lazy var buttonRegister: UIButton = {
        let buttonRegister = UIButton(frame: .zero)
        buttonRegister.setTitle("Cadastre-se Gratis", for: .normal)
        buttonRegister.backgroundColor = #colorLiteral(red: 0.1725490196, green: 0, blue: 0.2431372549, alpha: 1)
        buttonRegister.addTarget(self, action: #selector(actionButtonRegister), for: .touchUpInside)
        buttonRegister.clipsToBounds = true
        buttonRegister.layer.cornerRadius = 10
        return buttonRegister
    }()
    
    private func constraintsImageLogo() {
        imageLogo.snp.makeConstraints {
            $0.top.lessThanOrEqualTo(view).offset(70)
            $0.trailing.equalTo(view).inset(80)
            $0.leading.equalTo(view).offset(80)
            $0.height.equalTo(130)
        }
    }
    
    private func constraintsLabelEmail() {
        labelEmail.snp.makeConstraints {
            $0.top.lessThanOrEqualTo(imageLogo.snp.bottom).offset(55)
            $0.leading.equalTo(25)
        }
    }
    
    
    
    private func constraintsTextFieldEmail() {
        textFieldEmail.snp.makeConstraints {
            $0.top.equalTo(labelEmail.snp.bottom).offset(0)
            $0.trailing.equalTo(view).inset(25)
            $0.leading.equalTo(view).offset(25)
            $0.height.equalTo(25)
        }
    }
    
    private func constraintsViewLabel() {
        viewEmail.snp.makeConstraints {
            $0.top.equalTo(textFieldEmail.snp.bottom).offset(0)
            $0.height.equalTo(1)
            $0.trailing.equalTo(view).inset(25)
            $0.leading.equalTo(view).offset(25)
        }
    }
    
    private func constraintsLabelPassword() {
        labelPassword.snp.makeConstraints {
            $0.top.equalTo(textFieldEmail.snp.bottom).offset(10)
            $0.leading.equalTo(labelEmail.snp.leading)
        }
    }
    
    private func constraintsTextFieldPassword() {
        textFieldPassword.snp.makeConstraints {
            $0.top.equalTo(labelPassword.snp.bottom).offset(0)
            $0.leading.equalTo(textFieldEmail.snp.leading)
            $0.trailing.equalTo(textFieldEmail.snp.trailing)
            $0.height.equalTo(25)
        }
    }
    
    private func constraintsViewPassword() {
        viewPassword.snp.makeConstraints {
            $0.top.equalTo(textFieldPassword.snp.bottom).offset(0)
            $0.height.equalTo(1)
            $0.trailing.equalTo(view).inset(25)
            $0.leading.equalTo(view).offset(25)
        }
    }
    
    private func constraintsButtonForgotPassword()  {
        buttonForgotPassword.snp.makeConstraints {
            $0.top.equalTo(textFieldPassword.snp.bottom).offset(5)
            $0.leading.equalTo(labelPassword.snp.leading)
        }
    }
    
    private func constraintsButtonLogin() {
        buttonLogin.snp.makeConstraints {
            $0.top.equalTo(buttonForgotPassword.snp.bottom).offset(20)
            $0.trailing.equalTo(view).inset(20)
            $0.leading.equalTo(view).offset(20)
        }
    }
    
    private func constraintsLabelSocial() {
        labelSocial.snp.makeConstraints {
            $0.top.equalTo(buttonLogin.snp.bottom).offset(30)
            $0.centerX.equalTo(view)
        }
    }
    
    private func constraintsImageFacebook() {
        imageFacebook.snp.makeConstraints {
            $0.top.equalTo(viewRedesSociais)
            $0.leading.equalTo(viewRedesSociais)
            $0.height.equalTo(50)
            $0.width.equalTo(50)
        }
    }
    
    private func constraintsImageInstagram() {
        imageInstagram.snp.makeConstraints {
            $0.top.equalTo(viewRedesSociais)
            $0.leading.equalTo(imageFacebook.snp.trailing).offset(50)
            $0.trailing.equalTo(viewRedesSociais)
            $0.height.equalTo(50)
            $0.width.equalTo(50)
        }
    }
    
    private func constraintsViewRedesSociais() {
        viewRedesSociais.snp.makeConstraints {
            $0.top.equalTo(labelSocial.snp.bottom).offset(20)
            $0.centerX.equalTo(view)
        }
    }
    
    private func contraintsButtonRegister() {
        buttonRegister.snp.makeConstraints {
            $0.bottom.equalTo(view).inset(30)
            $0.trailing.equalTo(view).inset(20)
            $0.leading.equalTo(view).offset(20)
        }
    }
}

extension LoginViewController: ViewLayoutHelper {
    func buildViewHierarchy() {
        view.addSubview(imageLogo)
        view.addSubview(labelEmail)
        view.addSubview(textFieldEmail)
        view.addSubview(viewEmail)
        view.addSubview(labelPassword)
        view.addSubview(textFieldPassword)
        view.addSubview(viewPassword)
        view.addSubview(buttonForgotPassword)
        view.addSubview(buttonLogin)
        view.addSubview(labelSocial)
        viewRedesSociais.addSubview(imageFacebook)
        viewRedesSociais.addSubview(imageInstagram)
        view.addSubview(buttonRegister)
        view.addSubview(viewRedesSociais)
    }
    
    func setupContraints() {
        constraintsImageLogo()
        constraintsLabelEmail()
        constraintsTextFieldEmail()
        constraintsViewLabel()
        constraintsLabelPassword()
        constraintsTextFieldPassword()
        constraintsViewPassword()
        constraintsButtonForgotPassword()
        contraintsButtonRegister()
        constraintsLabelSocial()
        constraintsImageFacebook()
        constraintsImageInstagram()
        constraintsButtonLogin()
        constraintsViewRedesSociais()
    }
    
    func setupAdditionalConfiguration() {
        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}

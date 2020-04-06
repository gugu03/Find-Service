//
//  ForgotPasswordViewController.swift
//  Find Service
//
//  Created by Luis Gustavo Oliveira Silva on 18/03/20.
//  Copyright © 2020 Luis Gustavo Oliveira Silva. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        setupView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
    }
    
    func alerta(title: String, mensagem:String){
        let alert = UIAlertController(title: title, message: mensagem, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func actionButtonSubmit() {
        guard textFieldEmail.text != "" else {
            self.alerta(title: "Aviso", mensagem: "Digite um E-mail")
            return
            
        }
        if (textFieldEmail.text ?? "").isEmailValido(){
            let alert = UIAlertController(title: "Aviso", message: "Email enviado com sucesso!", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction.init(title: "OK", style: UIAlertAction.Style.default, handler: { _ in
                self.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
            textFieldEmail.text = ""
        } else{
            alerta(title: "Aviso", mensagem: "Email invalido")
            return
        }
    }
    
    private lazy var viewName: UIView = {
        let viewName = UIView()
        viewName.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return viewName
    }()
    
    private lazy var labelTitle: UILabel = {
        let labelTitle = UILabel()
        labelTitle.textColor = #colorLiteral(red: 0.1725490196, green: 0, blue: 0.2431372549, alpha: 1)
        labelTitle.text = "Recuperar senha"
        labelTitle.font = .systemFont(ofSize: 20)
        labelTitle.numberOfLines = 0
        return labelTitle
    }()
    
    private lazy var labelForgotPassword: UILabel = {
        let labelTitle = UILabel()
        labelTitle.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        labelTitle.text = "Esqueceu sua senha?"
        labelTitle.font = .systemFont(ofSize: 20)
        labelTitle.numberOfLines = 0
        return labelTitle
    }()
    
    private lazy var imageForgotPassword: UIImageView = {
        let imageForgotPassword = UIImageView()
        imageForgotPassword.image = UIImage(named: "forgot")
        return imageForgotPassword
    }()
    
    private lazy var labelDescription: UILabel = {
        let labelDescription = UILabel()
        labelDescription.text = "Insira o seu e-mail no campo abaixo para enviarmos uma nova senha e as instruções para a troca da mesma."
        labelDescription.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        labelDescription.font = .systemFont(ofSize: 15)
        labelDescription.numberOfLines = 0
        return labelDescription
    }()
    
    private lazy var labelEmail: UILabel = {
        let labelEmail = UILabel()
        labelEmail.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        labelEmail.text = "Email:"
        labelEmail.font = .systemFont(ofSize: 15)
        labelEmail.numberOfLines = 0
        labelEmail.translatesAutoresizingMaskIntoConstraints = false
        return labelEmail
    }()
    
    private lazy var textFieldEmail: UITextField = {
        let textFieldEmail = UITextField(frame: .zero)
        textFieldEmail.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textFieldEmail.clipsToBounds = true
        textFieldEmail.layer.cornerRadius = 5
        return textFieldEmail
    }()
    
    private lazy var viewEmail: UIView = {
        let viewEmail = UIView()
        viewEmail.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return viewEmail
    }()
    
    private lazy var buttonSubmit: UIButton = {
        let buttonSubmit = UIButton(frame: .zero)
        buttonSubmit.setTitle("Enviar", for: .normal)
        buttonSubmit.addTarget(self, action: #selector(actionButtonSubmit), for: .touchUpInside)
        buttonSubmit.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        buttonSubmit.setTitleColor(#colorLiteral(red: 0.5810584426, green: 0.1285524964, blue: 0.5745313764, alpha: 1), for: .normal)
        buttonSubmit.clipsToBounds = true
        buttonSubmit.layer.cornerRadius = 10
        return buttonSubmit
    }()
    
    func constraintsViewName() {
        viewName.snp.makeConstraints {
            $0.top.equalTo(view)
            $0.leading.equalTo(view)
            $0.trailing.equalTo(view)
            $0.height.equalTo(50)
        }
    }
    
    func contraintsTitle() {
        labelTitle.snp.makeConstraints {
            $0.centerX.equalTo(viewName)
            $0.centerY.equalTo(viewName)
        }
    }
    
    func constraintsForgotPassword() {
        labelForgotPassword.snp.makeConstraints {
            $0.top.equalTo(imageForgotPassword.snp.bottom).offset(20)
            $0.centerX.equalTo(view)
        }
    }
    
    func constraintsImageForgotPassword() {
        imageForgotPassword.snp.makeConstraints {
            $0.top.equalTo(viewName.snp.bottom).offset(20)
            $0.centerX.equalTo(view)
            $0.width.equalTo(90)
            $0.height.equalTo(90)
        }
    }
    
    func constraintsLabelDescription() {
        labelDescription.snp.makeConstraints {
            $0.top.equalTo(labelForgotPassword.snp.bottom).offset(20)
            $0.trailing.equalTo(view).inset(30)
            $0.leading.equalTo(view).offset(30)
        }
    }
    
    func constraintsLabelEmail() {
        labelEmail.snp.makeConstraints {
            $0.top.equalTo(labelDescription.snp.bottom).offset(25)
            $0.leading.equalTo(view).offset(30)
        }
    }
    
    func constraintsTextFieldEmail() {
        textFieldEmail.snp.makeConstraints {
            $0.top.equalTo(labelEmail.snp.bottom).offset(3)
            $0.trailing.equalTo(view).inset(30)
            $0.leading.equalTo(view).offset(30)
            $0.height.equalTo(25)
        }
    }
    
    func constraintsViewEmail() {
        viewEmail.snp.makeConstraints {
            $0.top.equalTo(textFieldEmail.snp.bottom).offset(3)
            $0.trailing.equalTo(view).inset(30)
            $0.leading.equalTo(view).offset(30)
            $0.height.equalTo(1)
        }
    }
    
    private func constraintsButtonSubmit() {
        buttonSubmit.snp.makeConstraints {
            $0.top.equalTo(viewEmail.snp.bottom).offset(30)
            $0.trailing.equalTo(view).inset(80)
            $0.leading.equalTo(view).offset(80)
            $0.height.equalTo(30)
        }
    }
}
extension ForgotPasswordViewController: ViewLayoutHelper {
    func buildViewHierarchy() {
        view.addSubview(viewName)
        viewName.addSubview(labelTitle)
        view.addSubview(labelForgotPassword)
        view.addSubview(imageForgotPassword)
        view.addSubview(labelDescription)
        view.addSubview(labelEmail)
        view.addSubview(textFieldEmail)
        view.addSubview(viewEmail)
        view.addSubview(buttonSubmit)
    }
    
    func setupContraints() {
        constraintsViewName()
        contraintsTitle()
        constraintsForgotPassword()
        constraintsImageForgotPassword()
        constraintsLabelDescription()
        constraintsLabelEmail()
        constraintsTextFieldEmail()
        constraintsViewEmail()
        constraintsButtonSubmit()
    }
    
    func setupAdditionalConfiguration() {
        self.view.backgroundColor = #colorLiteral(red: 0.1725490196, green: 0, blue: 0.2431372549, alpha: 1)
    }
}

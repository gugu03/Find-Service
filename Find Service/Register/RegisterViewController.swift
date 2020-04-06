//
//  RegisterViewController.swift
//  Find Service
//
//  Created by Luis Gustavo Oliveira Silva on 17/03/20.
//  Copyright © 2020 Luis Gustavo Oliveira Silva. All rights reserved.
//
import Foundation
import UIKit

class RegisterViewController: UIViewController {
    
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
        navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.topItem?.title = "Cadastro"
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1725490196, green: 0, blue: 0.2431372549, alpha: 1)
        navigationController?.navigationBar.isTranslucent = false
    }
    private func createLabel(name: String) -> UILabel {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.1725490196, green: 0, blue: 0.2431372549, alpha: 1)
        label.text = name + ":"
        label.font = .systemFont(ofSize: 20)
        label.numberOfLines = 0
        return label
    }
    
    private func createViewTextField() -> UIView {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.1725490196, green: 0, blue: 0.2431372549, alpha: 1)
        return view
    }
    
    private func createTextField() -> UIView {
        let textField = UITextField(frame: .zero)
        textField.textColor = #colorLiteral(red: 0.1725490196, green: 0, blue: 0.2431372549, alpha: 1)
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 5
        return textField
    }
    
    private lazy var descriptionLabel: UILabel = {
        return createLabel(name: "Preencha os seguintes dados pessoais")
    }()
    
    private lazy var imageRegister: UIImageView = {
          let imageRegister = UIImageView()
          imageRegister.image = UIImage(named: "note")
          return imageRegister
      }()
    
    private lazy var nameLabel: UILabel = {
        return createLabel(name: "Nome")
    }()
    
    private lazy var nameTextField: UIView = {
           return createTextField()
       }()
    
    private lazy var nameViewTextField: UIView = {
        return createViewTextField()
    }()
    
    private lazy var emailLabel: UILabel = {
        return createLabel(name: "Email")
    }()
    
    private lazy var emailTextField: UIView = {
        return createTextField()
    }()
    
    private lazy var emailViewTextField: UIView = {
        return createViewTextField()
    }()
    
    private lazy var cpfLabel: UILabel = {
        return createLabel(name: "CPF")
    }()
    
    private lazy var cpfTextField: UIView = {
        return createTextField()
    }()
    
    private lazy var cpfViewTextField: UIView = {
        return createViewTextField()
    }()
    
    private lazy var celularLabel: UILabel = {
        return createLabel(name: "Celular")
    }()
    
    private lazy var celularTextField: UIView = {
        return createTextField()
    }()
    
    private lazy var celularViewTextField: UIView = {
        return createViewTextField()
    }()
    
    private lazy var senhaLabel: UILabel = {
        return createLabel(name: "Senha")
    }()
    
    private lazy var senhaTextField: UIView = {
        return createTextField()
    }()
    
    private lazy var senhaViewTextField: UIView = {
        return createViewTextField()
    }()
    
    private lazy var confirmarSenhaLabel: UILabel = {
           return createLabel(name: "Confirmar Senha")
       }()
       
       private lazy var confirmarSenhaTextField: UIView = {
           return createTextField()
       }()
       
       private lazy var confirmarSenhaViewTextField: UIView = {
           return createViewTextField()
       }()
    
    private lazy var buttonContinue: UIButton = {
          let buttonContinue = UIButton(frame: .zero)
          buttonContinue.setTitle("Continuar", for: .normal)
          buttonContinue.backgroundColor = #colorLiteral(red: 0.1725490196, green: 0, blue: 0.2431372549, alpha: 1)
          //buttonContinue.addTarget(self, action: #selector(actionButtonRegister), for: .touchUpInside)
          buttonContinue.clipsToBounds = true
          buttonContinue.layer.cornerRadius = 10
          return buttonContinue
      }()

    
    func constraintsImageRegister() {
        imageRegister.snp.makeConstraints {
            $0.centerX.equalTo(view)
            $0.top.lessThanOrEqualTo(view).offset(25)
            $0.width.equalTo(90)
            $0.height.equalTo(90)
        }
       }
    
    func constraintsDescriptionLabel() {
        descriptionLabel.snp.makeConstraints {
            $0.centerX.equalTo(view)
            $0.top.equalTo(imageRegister.snp.bottom).offset(20)
        }
    }
    
    func constraintsName() {
        nameLabel.snp.makeConstraints {
            $0.top.equalTo(descriptionLabel.snp.bottom).offset(20)
            $0.leading.equalTo(25)
        }
    }
    
    func constraintsNameTextField() {
        nameTextField.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(0)
            $0.trailing.equalTo(view).inset(25)
            $0.leading.equalTo(view).offset(25)
            $0.height.equalTo(25)
        }
    }
    
    func constraintsNameViewTextField() {
        nameViewTextField.snp.makeConstraints {
            $0.top.equalTo(nameTextField.snp.bottom).offset(0)
            $0.trailing.equalTo(view).inset(25)
            $0.leading.equalTo(view).offset(25)
            $0.height.equalTo(1)
        }
    }
    
    func constraintsEmail() {
        emailLabel.snp.makeConstraints {
            $0.top.equalTo(nameViewTextField.snp.bottom).offset(10)
            $0.leading.equalTo(25)
        }
    }
    
    func constraintsEmailTextField() {
        emailTextField.snp.makeConstraints {
            $0.top.equalTo(emailLabel.snp.bottom).offset(0)
            $0.trailing.equalTo(view).inset(25)
            $0.leading.equalTo(view).offset(25)
            $0.height.equalTo(25)
        }
    }
    
    func constraintsEmailViewTextField() {
        emailViewTextField.snp.makeConstraints {
            $0.top.equalTo(emailTextField.snp.bottom).offset(0)
            $0.trailing.equalTo(view).inset(25)
            $0.leading.equalTo(view).offset(25)
            $0.height.equalTo(1)
        }
    }
    
    func constraintsCpf() {
        cpfLabel.snp.makeConstraints {
            $0.top.equalTo(emailViewTextField.snp.bottom).offset(10)
            $0.leading.equalTo(25)
        }
    }
    
    func constraintsCpfTextField() {
        cpfTextField.snp.makeConstraints {
            $0.top.equalTo(cpfLabel.snp.bottom).offset(0)
            $0.trailing.equalTo(view).inset(25)
            $0.leading.equalTo(view).offset(25)
            $0.height.equalTo(25)
        }
    }
    
    func constraintsCpfViewTextField() {
        cpfViewTextField.snp.makeConstraints {
            $0.top.equalTo(cpfTextField.snp.bottom).offset(0)
            $0.trailing.equalTo(view).inset(25)
            $0.leading.equalTo(view).offset(25)
            $0.height.equalTo(1)
        }
    }
    
    func constraintsCelular() {
        celularLabel.snp.makeConstraints {
            $0.top.equalTo(cpfViewTextField.snp.bottom).offset(10)
            $0.leading.equalTo(25)
        }
    }
    
    func constraintsCelularTextField() {
        celularTextField.snp.makeConstraints {
            $0.top.equalTo(celularLabel.snp.bottom).offset(0)
            $0.trailing.equalTo(view).inset(25)
            $0.leading.equalTo(view).offset(25)
            $0.height.equalTo(25)
        }
    }
    
    func constraintsCelularViewTextField() {
        celularViewTextField.snp.makeConstraints {
            $0.top.equalTo(celularTextField.snp.bottom).offset(0)
            $0.trailing.equalTo(view).inset(25)
            $0.leading.equalTo(view).offset(25)
            $0.height.equalTo(1)
        }
    }
    
    func constraintsSenha() {
         senhaLabel.snp.makeConstraints {
             $0.top.equalTo(celularViewTextField.snp.bottom).offset(10)
             $0.leading.equalTo(25)
         }
     }
     
     func constraintsSenhaTextField() {
         senhaTextField.snp.makeConstraints {
             $0.top.equalTo(senhaLabel.snp.bottom).offset(0)
             $0.trailing.equalTo(view).inset(25)
             $0.leading.equalTo(view).offset(25)
             $0.height.equalTo(25)
         }
     }
     
     func constraintsSenhaViewTextField() {
         senhaViewTextField.snp.makeConstraints {
             $0.top.equalTo(senhaTextField.snp.bottom).offset(0)
             $0.trailing.equalTo(view).inset(25)
             $0.leading.equalTo(view).offset(25)
             $0.height.equalTo(1)
         }
     }
    
    func constraintsConfirmarSenha() {
            confirmarSenhaLabel.snp.makeConstraints {
                $0.top.equalTo(senhaViewTextField.snp.bottom).offset(10)
                $0.leading.equalTo(25)
            }
        }
        
        func constraintsConfirmarSenhaTextField() {
            confirmarSenhaTextField.snp.makeConstraints {
                $0.top.equalTo(confirmarSenhaLabel.snp.bottom).offset(0)
                $0.trailing.equalTo(view).inset(25)
                $0.leading.equalTo(view).offset(25)
                $0.height.equalTo(25)
            }
        }
        
        func constraintsConfirmarSenhaViewTextField() {
            confirmarSenhaViewTextField.snp.makeConstraints {
                $0.top.equalTo(confirmarSenhaTextField.snp.bottom).offset(0)
                $0.trailing.equalTo(view).inset(25)
                $0.leading.equalTo(view).offset(25)
                $0.height.equalTo(1)
            }
        }
    
    private func contraintsButtonContinue() {
           buttonContinue.snp.makeConstraints {
               $0.bottom.equalTo(view).inset(25)
               $0.trailing.equalTo(view).inset(20)
               $0.leading.equalTo(view).offset(20)
           }
       }
}
extension RegisterViewController: ViewLayoutHelper {
    func buildViewHierarchy() {
        view.addSubview(imageRegister)
        view.addSubview(descriptionLabel)
        view.addSubview(nameLabel)
        view.addSubview(nameTextField)
        view.addSubview(nameViewTextField)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(emailViewTextField)
        view.addSubview(cpfLabel)
        view.addSubview(cpfTextField)
        view.addSubview(cpfViewTextField)
        view.addSubview(celularLabel)
        view.addSubview(celularTextField)
        view.addSubview(celularViewTextField)
        view.addSubview(senhaLabel)
        view.addSubview(senhaTextField)
        view.addSubview(senhaViewTextField)
        view.addSubview(confirmarSenhaLabel)
        view.addSubview(confirmarSenhaTextField)
        view.addSubview(confirmarSenhaViewTextField)
        view.addSubview(buttonContinue)
    }
    
    func setupContraints() {
        constraintsImageRegister()
        constraintsDescriptionLabel()
        constraintsName()
        constraintsNameTextField()
        constraintsNameViewTextField()
        constraintsEmail()
        constraintsEmailTextField()
        constraintsEmailViewTextField()
        constraintsCpf()
        constraintsCpfTextField()
        constraintsCpfViewTextField()
        constraintsCelular()
        constraintsCelularTextField()
        constraintsCelularViewTextField()
        constraintsSenha()
        constraintsSenhaTextField()
        constraintsSenhaViewTextField()
        constraintsConfirmarSenha()
        constraintsConfirmarSenhaTextField()
        constraintsConfirmarSenhaViewTextField()
        contraintsButtonContinue()
    }
    
    func setupAdditionalConfiguration() {
        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}

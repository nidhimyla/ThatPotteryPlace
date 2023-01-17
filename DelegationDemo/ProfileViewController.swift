//
//  ProfileViewController.swift
//  DelegationDemo
//
//  Created by Nidhi Mylavarapu on 1/16/23.
//

import UIKit
import SwiftUI

class ProfileViewController: UIViewController {

    var background = UILabel()
    var nameImage = UIImageView()
    var firstName = UITextField()
    var lastName = UITextField()
    var phoneImage = UIImageView()
    var phone = UITextField()
    var mailImage = UIImageView()
    var mail = UITextField()
    var submitButton = UIButton()
    
    weak var delegate: ChangeProfileInfoDelegate?
    init(inputDelegate: ChangeProfileInfoDelegate){
        delegate = inputDelegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        background.backgroundColor = .white
        background.text = "  "
        background.layer.masksToBounds = true
        background.layer.cornerRadius = 12
        background.layer.borderWidth = 1
        background.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(background)
        
        nameImage.image = UIImage(named: "profile")
        nameImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameImage)
        
        firstName.placeholder = "First Name"
        firstName.textAlignment = .center
        firstName.font = UIFont(name: "Helvetica Light", size: 20)
        firstName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstName)
        
        lastName.placeholder = "Last Name"
        lastName.textAlignment = .center
        lastName.font = UIFont(name: "Helvetica Light", size: 20)
        lastName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(lastName)
        
        phoneImage.image = UIImage(named: "phone")
        phoneImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(phoneImage)
        
        phone.placeholder = "Phone Number"
        phone.textAlignment = .center
        phone.font = UIFont(name: "Helvetica Light", size: 20)
        phone.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(phone)
        
        mailImage.image = UIImage(named: "mail")
        mailImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mailImage)
        
        mail.placeholder = "Email Address"
        mail.textAlignment = .center
        mail.font = UIFont(name: "Helvetica Light", size: 20)
        mail.autocapitalizationType = UITextAutocapitalizationType.none
        mail.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mail)
        
        submitButton.setTitle("Submit    ", for: .normal)
        submitButton.setTitleColor(.black, for: .normal)
        submitButton.titleLabel?.textAlignment = .center
        submitButton.backgroundColor = UIColor(Color("PastelYellow"))
        submitButton.layer.masksToBounds = true
        submitButton.layer.cornerRadius = 10
        submitButton.titleLabel?.textAlignment = .center
        submitButton.addTarget(self, action: #selector(selectSubmitButton), for: .touchUpInside)
        submitButton.titleLabel?.font = UIFont(name: "Helvetica Light", size: 30)
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(submitButton)
        
        setupConstraints()
        // Do any additional setup after loading the view.
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            background.heightAnchor.constraint(equalToConstant: 500),
            background.widthAnchor.constraint(equalToConstant: 325),
            background.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            nameImage.topAnchor.constraint(equalTo: background.topAnchor, constant: 20),
            nameImage.heightAnchor.constraint(equalToConstant: 70),
            nameImage.widthAnchor.constraint(equalToConstant: 70),
            nameImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            firstName.topAnchor.constraint(equalTo: nameImage.bottomAnchor, constant: 20),
            firstName.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            lastName.topAnchor.constraint(equalTo: firstName.bottomAnchor, constant: 20),
            lastName.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            phoneImage.topAnchor.constraint(equalTo: lastName.bottomAnchor, constant: 20),
            phoneImage.heightAnchor.constraint(equalToConstant: 70),
            phoneImage.widthAnchor.constraint(equalToConstant: 70),
            phoneImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            phone.topAnchor.constraint(equalTo: phoneImage.bottomAnchor, constant: 20),
            phone.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            mailImage.topAnchor.constraint(equalTo: phone.bottomAnchor, constant: 20),
            mailImage.heightAnchor.constraint(equalToConstant: 70),
            mailImage.widthAnchor.constraint(equalToConstant: 70),
            mailImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            mail.topAnchor.constraint(equalTo: mailImage.bottomAnchor, constant: 20),
            mail.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            submitButton.topAnchor.constraint(equalTo: background.bottomAnchor, constant: 20),
            submitButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
    }
    
    @objc
    func selectSubmitButton(){
        //change profile info + welcome label
        //dismiss the view
        let s = (firstName.text ?? "") + " " + (lastName.text ?? "")
        delegate?.changeName(str: s)
        
        let n = phone.text ?? ""
        delegate?.changeNum(str: n)
        
        let m = mail.text ?? ""
        delegate?.changeEmail(str: m)
        
        dismiss(animated: true, completion: nil)
    }

}

protocol ChangeProfileInfoDelegate: UIViewController{
    func changeName(str: String)
    func changeNum(str: String)
    func changeEmail(str: String)
}

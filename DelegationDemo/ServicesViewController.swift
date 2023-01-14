//
//  ServicesViewController.swift
//  DelegationDemo
//
//  Created by Nidhi Mylavarapu on 1/12/23.
//

import UIKit
import SwiftUI

class ServicesViewController: UIViewController {

    var titleLabel = UILabel()
    var services: [Service] = []
    let serviceTableView = UITableView()
    let reuseIdentifier = "serviceReuseIdentifier"
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        titleLabel.numberOfLines = 0
        titleLabel.text = """
        
        
        
        
         Services
        """
        titleLabel.backgroundColor = UIColor(Color("PastelPink"))
        titleLabel.textColor = .black
        titleLabel.font = UIFont(name: "Helvetica Light", size: 30)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
        
        let potteryPainting = Service(name: "Pottery Painting", description: "desc", servicePicName: "pic", pricing: "pricing")
        let wheelThrowing = Service(name: "Wheel Throwing Classes", description: "desc", servicePicName: "pic", pricing: "pricing")
        let birthdayParties = Service(name: "Birthday Parties", description: "desc", servicePicName: "pic", pricing: "pricing")
        services = [potteryPainting, wheelThrowing, birthdayParties]
        let artClasses = Service(name: "Art Classes", description: "desc", servicePicName: "pic", pricing: "pricing")
        let giftCertificates = Service(name: "Gift Certificates", description: "desc", servicePicName: "pic", pricing: "pricing")
        services = [potteryPainting, wheelThrowing, birthdayParties]
        services = [potteryPainting, wheelThrowing, birthdayParties, artClasses, giftCertificates]
        
        serviceTableView.backgroundColor = .systemPink
        serviceTableView.translatesAutoresizingMaskIntoConstraints = false
        //serviceTableView.register(<#T##nib: UINib?##UINib?#>, forCellReuseIdentifier: reuseIdentifier)
        view.addSubview(serviceTableView)
        
        setupConstraints()
    }
    
    func setupConstraints(){
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 200),
            titleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            serviceTableView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            serviceTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            serviceTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            serviceTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

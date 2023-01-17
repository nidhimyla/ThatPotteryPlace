//
//  SpecificServiceViewController.swift
//  DelegationDemo
//
//  Created by Nidhi Mylavarapu on 1/14/23.
//

import UIKit
import SwiftUI

class SpecificServiceViewController: UIViewController {

    let service: Service
    let serviceImage = UIImageView()
    let serviceName = UILabel()
    let line = UIImageView()
    let questionMark = UIImageView()
    let payment = UIImageView()
    let servicePricing = UILabel()
    let serviceDescription = UILabel()
    
    
    init(service: Service) {
        self.service = service
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        serviceImage.image = UIImage(named: service.servicePicName + "colored")
        serviceImage.layer.masksToBounds = true
        serviceImage.layer.cornerRadius = 40
        serviceImage.layer.borderWidth = 1
        serviceImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(serviceImage)
        
        serviceName.text = " " + service.name + " "
        //serviceName.backgroundColor = UIColor(Color("PastelPink"))
        serviceName.font = UIFont(name: "Helvetica Light", size: 50)
        serviceName.adjustsFontSizeToFitWidth = true
        serviceName.layer.masksToBounds = true
        serviceName.layer.cornerRadius = 15
        serviceName.textAlignment = .center
        serviceName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(serviceName)
        
        line.image = UIImage(named: "line")
        line.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(line)
        
        questionMark.image = UIImage(named: "questionmarkIcon")
        questionMark.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(questionMark)
        
        serviceDescription.text = service.description
        serviceDescription.font = UIFont(name: "Helvetica Light", size: 17)
        serviceDescription.adjustsFontSizeToFitWidth = true
        serviceDescription.textAlignment = .center
        serviceDescription.numberOfLines = 0
        serviceDescription.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(serviceDescription)
        
        payment.image = UIImage(named: "paymentIconcolored")
        payment.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(payment)
        
        servicePricing.text = service.pricing
        servicePricing.font = UIFont(name: "Helvetica Light", size: 17)
        servicePricing.adjustsFontSizeToFitWidth = true
        servicePricing.textAlignment = .center
        servicePricing.numberOfLines = 0
        servicePricing.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(servicePricing)
        
        setupConstraints()
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            serviceImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            serviceImage.heightAnchor.constraint(equalToConstant: 150),
            serviceImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            serviceImage.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            serviceName.topAnchor.constraint(equalTo: serviceImage.bottomAnchor, constant: 10),
            serviceName.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            serviceName.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            line.topAnchor.constraint(equalTo: serviceName.bottomAnchor, constant: 10),
            line.heightAnchor.constraint(equalToConstant: 10),
            line.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            line.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            questionMark.topAnchor.constraint(equalTo: line.bottomAnchor, constant: 10),
            questionMark.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            questionMark.heightAnchor.constraint(equalToConstant: 50),
            questionMark.widthAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            serviceDescription.topAnchor.constraint(equalTo: questionMark.bottomAnchor, constant: 10),
            serviceDescription.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            serviceDescription.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            serviceDescription.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            payment.topAnchor.constraint(equalTo: serviceDescription.bottomAnchor, constant: 20),
            payment.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            payment.heightAnchor.constraint(equalToConstant: 50),
            payment.widthAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            servicePricing.topAnchor.constraint(equalTo: payment.bottomAnchor, constant: 10),
            servicePricing.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            servicePricing.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            servicePricing.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10)
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

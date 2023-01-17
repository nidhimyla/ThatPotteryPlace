//
//  BookAnAppointmentViewController.swift
//  DelegationDemo
//
//  Created by Nidhi Mylavarapu on 1/13/23.
//

import UIKit
import SwiftUI
import EventKitUI

class BookAnAppointmentViewController: UIViewController {

    var titleLabel = UILabel()
    var instruction = UILabel()
    var customerName = UITextField()
    var submitAppointmentDetails = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        titleLabel.numberOfLines = 0
        titleLabel.text = """
        
        
        
        
         Book An Appointment
        """
        titleLabel.backgroundColor = UIColor(Color("PastelBlue"))
        titleLabel.textColor = .black
        titleLabel.font = UIFont(name: "Helvetica Light", size: 30)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
    
        
        instruction.backgroundColor = UIColor(Color("PastelYellow"))
        instruction.layer.masksToBounds = true
        instruction.font = UIFont(name: "Helvetica Light", size: 50)
        instruction.adjustsFontSizeToFitWidth = true
        instruction.layer.cornerRadius = 20
        instruction.text = " Complete your appointment details below. "
        instruction.textAlignment = .center
        instruction.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(instruction)
        
        customerName.backgroundColor = UIColor(Color("PastelBlueLighter"))
        customerName.font = UIFont(name: "Helvetica Light", size: 30)
        customerName.textColor = .black
        customerName.textAlignment = .center
        customerName.layer.masksToBounds = true
        customerName.layer.cornerRadius = 12
        customerName.placeholder = " First and Last Name "
        customerName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(customerName)
        
        
        submitAppointmentDetails.setTitle(" Submit Appointment Details ", for: .normal)
        submitAppointmentDetails.titleLabel?.font = UIFont(name: "Helvetica Light", size: 30)
        submitAppointmentDetails.titleLabel?.adjustsFontSizeToFitWidth = true
        submitAppointmentDetails.setTitleColor(.black, for: .normal)
        submitAppointmentDetails.layer.masksToBounds = true
        submitAppointmentDetails.layer.cornerRadius = 12
        submitAppointmentDetails.layer.borderWidth = 1
        submitAppointmentDetails.backgroundColor = UIColor(Color("PastelYellow"))
        submitAppointmentDetails.titleLabel?.textColor = .darkGray
        submitAppointmentDetails.titleLabel?.textAlignment = .center
        submitAppointmentDetails.addTarget(self, action: #selector(selectSubmitAppointmentDetails), for: .touchUpInside)
        submitAppointmentDetails.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(submitAppointmentDetails)
        
        setupConstraints()
    }
    func setupConstraints(){
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 150),
            titleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            instruction.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            instruction.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            instruction.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            instruction.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            customerName.topAnchor.constraint(equalTo: instruction.bottomAnchor, constant: 20),
            customerName.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            customerName.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        NSLayoutConstraint.activate([
            submitAppointmentDetails.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            submitAppointmentDetails.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            submitAppointmentDetails.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            submitAppointmentDetails.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30)
        ])
        
    }
    
    @objc
    func selectSubmitAppointmentDetails(){
        let mapMessage = UIAlertController(title: "Submit Appointment", message: "Please review your appointment details before confirming.", preferredStyle: .alert)
        let appleMap = UIAlertAction(title: "Confirm", style: .default, handler: {(action) -> Void in
            print("hi")
        })
        mapMessage.addAction(appleMap)
        let googleMap = UIAlertAction(title: "Edit", style: .default, handler: {(action) -> Void in
            print("hello")
        })
        mapMessage.addAction(googleMap)
        
        self.present(mapMessage, animated: true, completion: nil)
    }

}

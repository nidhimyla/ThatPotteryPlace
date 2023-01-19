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
    //delegator
    //delegate is AppointmentTableViewCell
    
    let appointment: Appointment
    var titleLabel = UILabel()
    var instruction = UILabel()
    var guestCount = UITextField()
    var datePicker = UIDatePicker()
    var potteryPaintingOrMosaic = UIButton()
    var wheelThrowing = UIButton()
    var birthdayParty = UIButton()
    var finalService = String()
    var estimPricePer = String()
    var submitAppointmentDetails = UIButton()
    
    weak var delegate: ChangeAppointmentDelegate?
    init(appointment: Appointment, delegate: ChangeAppointmentDelegate) {
        self.appointment = appointment
        self.delegate = delegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        titleLabel.numberOfLines = 0
        titleLabel.text = """
        
        
        
        
         Book/Edit An Appointment
        """
        titleLabel.backgroundColor = UIColor(Color("PastelBlueLighter"))
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
        
        guestCount.backgroundColor = UIColor(Color("PastelBlueLighter"))
        guestCount.font = UIFont(name: "Helvetica Light", size: 30)
        guestCount.textColor = .black
        guestCount.textAlignment = .center
        guestCount.layer.masksToBounds = true
        guestCount.layer.cornerRadius = 12
        guestCount.placeholder = " # of Guests "
        guestCount.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(guestCount)
        
       
        
        datePicker.datePickerMode = .dateAndTime
        datePicker.backgroundColor = UIColor(Color("PastelBlueLighter"))
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(datePicker)
        
        potteryPaintingOrMosaic.setTitle("Pottery Painting \n or Mosaic", for: .normal)
        potteryPaintingOrMosaic.titleLabel?.numberOfLines = 0
        potteryPaintingOrMosaic.titleLabel?.adjustsFontSizeToFitWidth = true
        potteryPaintingOrMosaic.setTitleColor(.black, for: .normal)
        potteryPaintingOrMosaic.layer.masksToBounds = true
        potteryPaintingOrMosaic.layer.cornerRadius = 12
        potteryPaintingOrMosaic.layer.borderWidth = 1
        potteryPaintingOrMosaic.backgroundColor = .white
        potteryPaintingOrMosaic.titleLabel?.textColor = .darkGray
        potteryPaintingOrMosaic.titleLabel?.textAlignment = .center
        potteryPaintingOrMosaic.addTarget(self, action: #selector(selectPotteryPaintingOrMosaic), for: .touchUpInside)
        potteryPaintingOrMosaic.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(potteryPaintingOrMosaic)
        
        wheelThrowing.setTitle("Wheel \n Throwing", for: .normal)
        wheelThrowing.titleLabel?.numberOfLines = 0
        wheelThrowing.titleLabel?.adjustsFontSizeToFitWidth = true
        wheelThrowing.setTitleColor(.black, for: .normal)
        wheelThrowing.layer.masksToBounds = true
        wheelThrowing.layer.cornerRadius = 12
        wheelThrowing.layer.borderWidth = 1
        wheelThrowing.backgroundColor = .white
        wheelThrowing.titleLabel?.textColor = .darkGray
        wheelThrowing.titleLabel?.textAlignment = .center
        wheelThrowing.addTarget(self, action: #selector(selectWheelThrowing), for: .touchUpInside)
        wheelThrowing.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(wheelThrowing)
        
        birthdayParty.setTitle("Birthday \n Parties", for: .normal)
        birthdayParty.titleLabel?.numberOfLines = 0
        birthdayParty.titleLabel?.adjustsFontSizeToFitWidth = true
        birthdayParty.setTitleColor(.black, for: .normal)
        birthdayParty.layer.masksToBounds = true
        birthdayParty.layer.cornerRadius = 12
        birthdayParty.layer.borderWidth = 1
        birthdayParty.backgroundColor = .white
        birthdayParty.titleLabel?.textColor = .darkGray
        birthdayParty.titleLabel?.textAlignment = .center
        birthdayParty.addTarget(self, action: #selector(selectBirthdayParties), for: .touchUpInside)
        birthdayParty.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(birthdayParty)
        
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
            guestCount.topAnchor.constraint(equalTo: instruction.bottomAnchor, constant: 50),
            guestCount.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            guestCount.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        NSLayoutConstraint.activate([
            datePicker.topAnchor.constraint(equalTo: guestCount.bottomAnchor, constant: 20),
            datePicker.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            wheelThrowing.topAnchor.constraint(equalTo: datePicker.bottomAnchor, constant: 20),
            wheelThrowing.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            wheelThrowing.widthAnchor.constraint(equalToConstant: 100),
            wheelThrowing.heightAnchor.constraint(equalToConstant: 70)
        ])
        
        NSLayoutConstraint.activate([
            potteryPaintingOrMosaic.trailingAnchor.constraint(equalTo: wheelThrowing.leadingAnchor, constant: -10),
            potteryPaintingOrMosaic.centerYAnchor.constraint(equalTo: wheelThrowing.centerYAnchor),
            potteryPaintingOrMosaic.widthAnchor.constraint(equalToConstant: 100),
            potteryPaintingOrMosaic.heightAnchor.constraint(equalToConstant: 70)
        ])
        
        NSLayoutConstraint.activate([
            birthdayParty.leadingAnchor.constraint(equalTo: wheelThrowing.trailingAnchor, constant: 10),
            birthdayParty.centerYAnchor.constraint(equalTo: wheelThrowing.centerYAnchor),
            birthdayParty.widthAnchor.constraint(equalToConstant: 100),
            birthdayParty.heightAnchor.constraint(equalToConstant: 70)
        ])
        
        NSLayoutConstraint.activate([
            submitAppointmentDetails.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            submitAppointmentDetails.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            submitAppointmentDetails.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            submitAppointmentDetails.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50)
        ])
        
    }
    
    @objc
    func selectPotteryPaintingOrMosaic(){
        potteryPaintingOrMosaic.backgroundColor = UIColor(Color("PastelBlueLighter"))
        wheelThrowing.backgroundColor = .white
        birthdayParty.backgroundColor = .white
        finalService = "Pottery Painting / Mosaic (~ 1.5 hours)"
        estimPricePer = "Depends on pottery selected"
    }
    
    @objc
    func selectWheelThrowing(){
        wheelThrowing.backgroundColor = UIColor(Color("PastelBlueLighter"))
        potteryPaintingOrMosaic.backgroundColor = .white
        birthdayParty.backgroundColor = .white
        finalService = "Wheel Throwing (~ 1 hour)"
        estimPricePer = "$50 per guest"
    }
    
    @objc
    func selectBirthdayParties(){
        birthdayParty.backgroundColor = UIColor(Color("PastelBlueLighter"))
        potteryPaintingOrMosaic.backgroundColor = .white
        wheelThrowing.backgroundColor = .white
        finalService = "Birthday Party (~ 2 hours)"
        estimPricePer = "$23 per guest"
    }
    
    @objc
    func selectSubmitAppointmentDetails(){
        let message = UIAlertController(title: "Submit Appointment", message: "Please review your appointment details before confirming. Please make the profile information is completed in the 'Your Cart' page when booking appointments.", preferredStyle: .alert)
        let confirm = UIAlertAction(title: "Confirm", style: .default, handler: {(action) -> Void in
            self.delegate?.changeNumGuests(guests: self.guestCount.text ?? "0")
            self.delegate?.changeService(service: self.finalService)
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MM/dd/YYYY    hh:mm"
            self.delegate?.changeDateAndTime(dateAndTime: dateFormatter.string(from: self.datePicker.date) ?? "00/00/00 00:00")
            self.delegate?.changeEstimatedPrice(price: self.estimPricePer)
            self.dismiss(animated: true)
        })
        message.addAction(confirm)
        let edit = UIAlertAction(title: "Edit", style: .default, handler: {(action) -> Void in
            print("Editing")
        })
        message.addAction(edit)
        
        self.present(message, animated: true, completion: nil)
    }

}

protocol ChangeAppointmentDelegate: UITableViewCell{
    func changeNumGuests(guests: String)
    func changeService(service: String)
    func changeDateAndTime(dateAndTime: String)
    func changeEstimatedPrice(price: String)
}

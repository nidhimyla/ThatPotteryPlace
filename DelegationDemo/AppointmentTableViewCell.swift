//
//  AppointmentTableViewCell.swift
//  DelegationDemo
//
//  Created by Nidhi Mylavarapu on 1/17/23.
//

import UIKit
import SwiftUI

class AppointmentTableViewCell: UITableViewCell {

    let background = UILabel()
    let numOfGuests = UILabel()
    let dateAndTime = UILabel()
    let service = UILabel()
    let estimatedPrice = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        background.backgroundColor = UIColor(Color("PastelBlueLighter"))
        background.translatesAutoresizingMaskIntoConstraints = false
        background.layer.masksToBounds = true
        background.layer.cornerRadius = 50
        contentView.addSubview(background)
        
        numOfGuests.font = UIFont(name: "Helvetica Light", size: 20)
        numOfGuests.adjustsFontSizeToFitWidth = true
        numOfGuests.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(numOfGuests)
        
        service.font = UIFont(name: "Helvetica Light", size: 20)
        service.adjustsFontSizeToFitWidth = true
        service.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(service)
        
        dateAndTime.font = UIFont(name: "Helvetica Light", size: 20)
        dateAndTime.adjustsFontSizeToFitWidth = true
        dateAndTime.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(dateAndTime)
        
        estimatedPrice.font = UIFont(name: "Helvetica Light", size: 20)
        estimatedPrice.adjustsFontSizeToFitWidth = true
        estimatedPrice.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(estimatedPrice)
        
        setupConstraints()
    }
    
    func configure(appointment: Appointment){
       
        numOfGuests.text = " " + appointment.numOfGuests + " guests."
        dateAndTime.text = " " + appointment.dateAndTime + " "
        service.text = " " + appointment.service
        
        estimatedPrice.text = " Estimated Price: " + appointment.estimatedPrice
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            contentView.heightAnchor.constraint(equalToConstant: 175)
        ])
        
        NSLayoutConstraint.activate([
            background.heightAnchor.constraint(equalToConstant: 200),
            background.widthAnchor.constraint(equalToConstant: 370),
            background.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            background.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
            background.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
        
        NSLayoutConstraint.activate([
            numOfGuests.topAnchor.constraint(equalTo: background.topAnchor, constant: 10),
            numOfGuests.leadingAnchor.constraint(equalTo: background.leadingAnchor, constant: 20),
            numOfGuests.widthAnchor.constraint(equalTo: background.widthAnchor)
        ])
        
        NSLayoutConstraint.activate([
            service.topAnchor.constraint(equalTo: numOfGuests.bottomAnchor, constant: 10),
            service.leadingAnchor.constraint(equalTo: background.leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            dateAndTime.topAnchor.constraint(equalTo: service.bottomAnchor, constant: 10),
            dateAndTime.leadingAnchor.constraint(equalTo: background.leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            estimatedPrice.topAnchor.constraint(equalTo: dateAndTime.bottomAnchor, constant: 10),
            estimatedPrice.leadingAnchor.constraint(equalTo: background.leadingAnchor, constant: 20),
            estimatedPrice.trailingAnchor.constraint(equalTo: background.trailingAnchor, constant: -20)
        ])
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension AppointmentTableViewCell: ChangeAppointmentDelegate{
    func changeNumGuests(guests: String) {
        self.numOfGuests.text = " " + guests + " guests"
    }
    
    func changeService(service: String) {
        self.service.text = " " + service
    }
    
    func changeDateAndTime(dateAndTime: String) {
        self.dateAndTime.text = " " + dateAndTime
    }
    
    func changeEstimatedPrice(price: String) {
        self.estimatedPrice.text = " Estimated Price: " + price
    }
    
    
    
}

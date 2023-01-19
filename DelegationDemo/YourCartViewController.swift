//
//  YourCartViewController.swift
//  DelegationDemo
//
//  Created by Nidhi Mylavarapu on 1/16/23.
//

import UIKit
import SwiftUI

class YourCartViewController: UIViewController, ChangeProfileInfoDelegate {
    

    var titleLabel = UILabel()
    var profile = UIButton()
    var profileInfo = UILabel()
    var profImage = UIImageView()
    var name = UILabel()
    var phoneNum = UILabel()
    var email = UILabel()
    var setup = UILabel()
    var bookAnAppointment = UILabel()
    var appointments: [Appointment] = []
    let appointmentList = UITableView()
    let reuseIdentifier = "cartReuseIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        titleLabel.numberOfLines = 0
        titleLabel.text = """
        
        
        
        
         Your Cart
        """
        titleLabel.backgroundColor = UIColor(Color("PastelBlue"))
        titleLabel.textColor = .black
        titleLabel.font = UIFont(name: "Helvetica Light", size: 30)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
        
        let profilePic = UIImage(named: "profile")
        profile.setImage(profilePic, for: .normal)
        profile.addTarget(self, action: #selector(selectProfile), for: .touchUpInside)
        profile.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profile)
        
        profileInfo.backgroundColor = UIColor(Color("PastelBlueLighter"))
        profileInfo.text = " "
        profileInfo.layer.masksToBounds = true
        profileInfo.layer.cornerRadius = 15
        profileInfo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileInfo)
        
        profImage.image = UIImage(named: "profile")
        profImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profImage)
        
        name.text = "Full Name"
        name.font = UIFont(name: "American Typewriter", size: 15)
        name.adjustsFontSizeToFitWidth = true
        name.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(name)
        
        phoneNum.text = "Phone Number"
        phoneNum.font = UIFont(name: "American Typewriter", size: 15)
        phoneNum.adjustsFontSizeToFitWidth = true
        phoneNum.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(phoneNum)
        
        email.text = "Email"
        email.font = UIFont(name: "American Typewriter", size: 15)
        email.adjustsFontSizeToFitWidth = true
        email.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(email)
        
        setup.layer.masksToBounds = true
        setup.textColor = .gray
        setup.numberOfLines = 0
        setup.text = "Edit personal information by clicking the profile icon in the top right corner."
        setup.textAlignment = .center
        setup.font = UIFont(name: "Helvetica Light", size: 15)
        setup.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(setup)
        
        bookAnAppointment.layer.masksToBounds = true
        bookAnAppointment.textColor = .gray
        bookAnAppointment.numberOfLines = 0
        bookAnAppointment.text = """
        Book or edit an appointment by selecting a cell below.
        Estimated Price does not include tax.
        You will recieve a call when your appointment time is confirmed.
        If a wheel throwing appointment or birthday party is booked, a deposit will be taken over the phone.
        """
        bookAnAppointment.textAlignment = .center
        bookAnAppointment.font = UIFont(name: "Helvetica Light", size: 15)
        bookAnAppointment.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bookAnAppointment)
        
        let appointment1 = Appointment(numOfGuests: "0", dateAndTime: "00/00/00 00:00", service: "-", estimatedPrice: "$0")
        let appointment2 = Appointment(numOfGuests: "0", dateAndTime: "00/00/00 00:00", service: "-", estimatedPrice: "$0")
        let appointment3 = Appointment(numOfGuests: "0", dateAndTime: "00/00/00 00:00", service: "-", estimatedPrice: "$0")
        let appointment4 = Appointment(numOfGuests: "0", dateAndTime: "00/00/00 00:00", service: "-", estimatedPrice: "$0")
        let appointment5 = Appointment(numOfGuests: "0", dateAndTime: "00/00/00 00:00", service: "-", estimatedPrice: "$0")
        let appointment6 = Appointment(numOfGuests: "0", dateAndTime: "00/00/00 00:00", service: "-", estimatedPrice: "$0")
        let appointment7 = Appointment(numOfGuests: "0", dateAndTime: "00/00/00 00:00", service: "-", estimatedPrice: "$0")
        let appointment8 = Appointment(numOfGuests: "0", dateAndTime: "00/00/00 00:00", service: "-", estimatedPrice: "$0")
        let appointment9 = Appointment(numOfGuests: "0", dateAndTime: "00/00/00 00:00", service: "-", estimatedPrice: "$0")
        let appointment10 = Appointment(numOfGuests: "0", dateAndTime: "00/00/00 00:00", service: "-", estimatedPrice: "$0")
        
        appointments = [appointment1, appointment2, appointment3, appointment4, appointment5, appointment6, appointment7, appointment8, appointment9, appointment10]
        
        appointmentList.translatesAutoresizingMaskIntoConstraints = false
        appointmentList.layoutSubviews()
        appointmentList.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
        appointmentList.dataSource = self
        appointmentList.delegate = self
        appointmentList.register(AppointmentTableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        view.addSubview(appointmentList)
        // Do any additional setup after loading the view.
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
            profile.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: -10),
            profile.widthAnchor.constraint(equalToConstant: 40),
            profile.heightAnchor.constraint(equalToConstant: 40),
            profile.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            profileInfo.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            profileInfo.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            profileInfo.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            profileInfo.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            profImage.leadingAnchor.constraint(equalTo: profileInfo.leadingAnchor, constant: 10),
            profImage.heightAnchor.constraint(equalTo: profileInfo.heightAnchor),
            profImage.topAnchor.constraint(equalTo: profileInfo.topAnchor, constant: 5),
            profImage.widthAnchor.constraint(equalTo: profileInfo.heightAnchor)
        ])
        
        NSLayoutConstraint.activate([
            name.topAnchor.constraint(equalTo: profileInfo.topAnchor, constant: 10),
            name.leadingAnchor.constraint(equalTo: profImage.trailingAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            phoneNum.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 10),
            phoneNum.leadingAnchor.constraint(equalTo: profImage.trailingAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            email.topAnchor.constraint(equalTo: phoneNum.bottomAnchor, constant: 10),
            email.leadingAnchor.constraint(equalTo: profImage.trailingAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            setup.topAnchor.constraint(equalTo: profileInfo.bottomAnchor, constant: 20),
            setup.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            setup.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            bookAnAppointment.topAnchor.constraint(equalTo: setup.bottomAnchor, constant: 20),
            bookAnAppointment.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            bookAnAppointment.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            appointmentList.topAnchor.constraint(equalTo: bookAnAppointment.bottomAnchor),
            appointmentList.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            appointmentList.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            appointmentList.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    @objc
    func selectProfile(){
        present(ProfileViewController(inputDelegate: self), animated: true)
    }
    
    func changeName(str: String) {
        name.text = str
    }
    
    func changeNum(str: String) {
        phoneNum.text = str
    }
    
    func changeEmail(str: String) {
        email.text = str
    }
}

extension YourCartViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appointments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = appointmentList.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? AppointmentTableViewCell    {
            cell.configure(appointment: appointments[indexPath.row])
            return cell
        }
        else{
            return UITableViewCell()
        }
    }
}

extension YourCartViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = appointmentList.cellForRow(at: indexPath) as! AppointmentTableViewCell
        present(BookAnAppointmentViewController(appointment: appointments[indexPath.row], delegate: cell), animated: true)
    }
}

//
//  ServicesViewController.swift
//  DelegationDemo
//
//  Created by Nidhi Mylavarapu on 1/12/23.
//

import UIKit
import SwiftUI

class ServicesViewController: UIViewController{
    

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
        
        let potteryPainting = Service(name: "Pottery Painting", description: "Pick unfinished pottery and use fun colors and techniques to paint it. We are now taking reservations as well as accepting  walk ins for pottery painting. Please call us to make an appointment for your group. We will glaze and fire it for you. Come back and pick up your finished masterpiece!", servicePicName: "PotteryPainting", pricing: "For every pottery piece you paint we charge you a studio fee for glazing and firing that piece. Our studio fee is an additional 50% of the price of the pottery. (For example: Pottery priced at $10 will cost $15 total.)")
        let wheelThrowing = Service(name: "Wheel Throwing Classes", description: "Have you always wanted to create your own pottery from clay? We now offer wheel throwing classes for individuals as well as small groups and birthday parties. Wheel Throwing lessons require prior reservations and are private! Lessons are available Fridays, Saturdays and Sundays only.", servicePicName: "WheelThrowing", pricing: "Beginner Lessons: $50/lesson, $190 for 4 lessons. \n Intermediate Lesson: $55/lesson, $210 for 4 lessons. \n A deposit of $25 is required to book your lesson. Deposit will be adjusted against your final bill after your lesson. Deposit will be forfeited for no shows and any reschedule with less than 24 hour notice.")
        let mosaics = Service(name: "Mosaics", description: "Choose a mosaic base and fill it with colorful mosaic pieces. We will grout your project and make it look unique.", servicePicName: "mosaics", pricing: "For every mosaic base you use we charge you a studio fee for the materials. Our studio fee is an additional 50% of the price of the pottery. (For example: Mosaic bases at $10 will cost $15 total.)")
        let birthdayParties = Service(name: "Birthday Parties", description: "Pick up to 3 pieces from our birthday party selection when booking the party. The guests will choose one piece from your selection on the day of the party. We will glaze and fire the pieces which can be picked up by the party host in 2 weeks - no individual pickups. Parties can be booked every Saturday or Sunday during the following times: \n 12:00 PM - 1:30 PM \n 2:00 PM - 3:30 PM \n 4:00 PM - 5:30 PM", servicePicName: "BirthdayParties", pricing: "$23 per person with a minimum of 8 guests. Deposit of $90 to reserve")
        services = [potteryPainting, wheelThrowing, birthdayParties]
        let artClasses = Service(name: "Drawing Classes", description: "Improve your child's hand-eye coordination, concentration, and ability to observe...all while they are learning to draw! Expose your child to the wonders of ART at That Pottery Place. Art classes for children run once a week on Sundays from 12:00 PM to 1:30 PM. Available for children ages 9 & up.", servicePicName: "ArtClasses", pricing: "4 Classes $120 \n 8 Classes $224 \n 12 Classes $324")
        let giftCertificates = Service(name: "Gift Certificates", description: "Purchase gift certificates for your loved ones to celebrate an upcoming holiday or birthday! Gift certificates can be sent digitally through emailed or picked up in store.", servicePicName: "GiftCertificates", pricing: "Gift certificates can cover a particular service (i.e. one wheel throwing lesson) or a particular amount.")
        
        services = [potteryPainting, wheelThrowing, mosaics, birthdayParties, artClasses, giftCertificates]
        
        
        serviceTableView.translatesAutoresizingMaskIntoConstraints = false
        serviceTableView.layoutSubviews()
        serviceTableView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
        serviceTableView.dataSource = self
        serviceTableView.delegate = self
        serviceTableView.register(ServiceTableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
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

extension ServicesViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return services.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = serviceTableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? ServiceTableViewCell    {
            cell.configure(service: services[indexPath.row])
            return cell
        }
        else{
            return UITableViewCell()
        }
    }
}

extension ServicesViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        present(SpecificServiceViewController(service: services[indexPath.row]), animated: true)
    }
}

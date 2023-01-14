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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        titleLabel.numberOfLines = 0
        titleLabel.text = """
        
        
        
        
         Book An Appointment
        """
        titleLabel.backgroundColor = UIColor(Color("PastelBlue"))
        titleLabel.textColor = .black
        titleLabel.font = UIFont(name: "Chalkduster", size: 30)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
    
        
        setupConstraints()
    }
    func setupConstraints(){
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 200),
            titleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor)
        ])
        
    }

}

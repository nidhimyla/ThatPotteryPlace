//
//  ServiceTableViewCell.swift
//  DelegationDemo
//
//  Created by Nidhi Mylavarapu on 1/13/23.
//

import UIKit
import SwiftUI

class ServiceTableViewCell: UITableViewCell{
    
    let serviceImageView = UIImageView()
    let serviceLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        serviceImageView.translatesAutoresizingMaskIntoConstraints = false
        serviceImageView.layer.masksToBounds = true
        serviceImageView.layer.cornerRadius = 50
        contentView.addSubview(serviceImageView)
        
        serviceLabel.translatesAutoresizingMaskIntoConstraints = false
        serviceLabel.font = UIFont(name: "Helvetica Light", size: 25)
        serviceLabel.backgroundColor = UIColor(Color("PastelPink"))
        serviceLabel.layer.masksToBounds = true
        serviceLabel.layer.cornerRadius = 10
        serviceLabel.textColor = .black
        contentView.addSubview(serviceLabel)
        
        setupConstraints()
    }
    
    func configure(service: Service){
        serviceImageView.image = UIImage(named: service.servicePicName)
        serviceLabel.text = " " + service.name + " "
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            contentView.heightAnchor.constraint(equalToConstant: 175)
        ])
        NSLayoutConstraint.activate([
            serviceImageView.heightAnchor.constraint(equalToConstant: 200),
            serviceImageView.widthAnchor.constraint(equalToConstant: 370),
            serviceImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            serviceImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            serviceImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
        NSLayoutConstraint.activate([
            serviceLabel.bottomAnchor.constraint(equalTo: serviceImageView.bottomAnchor, constant: -10),
            serviceLabel.centerXAnchor.constraint(equalTo: serviceImageView.centerXAnchor)
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

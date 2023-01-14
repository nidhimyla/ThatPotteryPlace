//
//  ServiceTableViewCell.swift
//  DelegationDemo
//
//  Created by Nidhi Mylavarapu on 1/13/23.
//

import UIKit

class ServiceTableViewCell: UITableViewCell {
    
    let serviceImageView = UIImageView()
    let serviceLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        serviceImageView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(serviceImageView)
        
        serviceLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(serviceLabel)
        
        setupConstraints()
    }
    
    
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            serviceImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            serviceImageView.heightAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.33),
            serviceImageView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.33),
            serviceImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            serviceImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        NSLayoutConstraint.activate([
            serviceLabel.leadingAnchor.constraint(equalTo: serviceImageView.trailingAnchor, constant: 10),
            serviceLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
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

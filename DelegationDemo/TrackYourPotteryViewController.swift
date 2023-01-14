//
//  TrackYourPotteryViewController.swift
//  DelegationDemo
//
//  Created by Nidhi Mylavarapu on 1/13/23.
//

import UIKit
import SwiftUI

class TrackYourPotteryViewController: UIViewController {

    var titleLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        titleLabel.numberOfLines = 0
        titleLabel.text = """
        
        
        
        
         Track Your Pottery
        """
        titleLabel.backgroundColor = UIColor(Color("PastelGreen"))
        titleLabel.textColor = .black
        titleLabel.font = UIFont(name: "Chalkduster", size: 30)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
        
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
    }
}

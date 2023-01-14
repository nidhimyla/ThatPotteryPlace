//
//  ViewController.swift
//  ThatPotteryPlace
//
//  Created by Nidhi Mylavarapu on 12/29/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    var logo = UIImageView()
    var welcomeLabel = UILabel()
    var getStarted = UILabel()
    var palette = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        logo.image = UIImage(named: "ThatPotteryPlace")
        logo.clipsToBounds = true
        logo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logo)
        
        welcomeLabel.text = "Welcome!"
        welcomeLabel.font = UIFont(name: "Helvetica Light", size: 60)
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(welcomeLabel)
        
        
        getStarted.text = "Click below to get started."
        getStarted.font = UIFont(name: "Helvetica Light", size: 20)
        getStarted.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(getStarted)
        
        let palettePic = UIImage(named: "palette")
        palette.setImage(palettePic, for: .normal)
        palette.addTarget(self, action: #selector(selectPalette), for: .touchUpInside)
        palette.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(palette)
        
        setupConstraints()
    }

    func setupConstraints(){
        // logo
        NSLayoutConstraint.activate([
            logo.widthAnchor.constraint(equalToConstant: 300),
            logo.heightAnchor.constraint(equalToConstant: 300),
            logo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        // welcomeLabel
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 30),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        // getStarted
        NSLayoutConstraint.activate([
            getStarted.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor,
                constant: 15),
            getStarted.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        // palette
        NSLayoutConstraint.activate([
            palette.heightAnchor.constraint(equalToConstant: 150),
            palette.widthAnchor.constraint(equalToConstant: 150),
            palette.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 60),
            palette.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    @objc
    func selectPalette(){
        navigationController?.pushViewController(MenuViewController(), animated: true)
    }
    
}


//
//  AboutViewController.swift
//  DelegationDemo
//
//  Created by Nidhi Mylavarapu on 1/17/23.
//

import UIKit
import SwiftUI

class AboutViewController: UIViewController {

    var buildingImage = UIImageView()
    var titleLabel = UILabel()
    var descLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(Color("PastelPurple"))
        
        buildingImage.image = UIImage(named: "building")
        buildingImage.layer.masksToBounds = true
        buildingImage.layer.cornerRadius = 15
        buildingImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buildingImage)
        
        titleLabel.text = "About That Pottery Place"
        titleLabel.font = UIFont(name: "Helvetica Light", size: 30)
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
        
        descLabel.numberOfLines = 0
        descLabel.text = "That Pottery Place is very proud to be a minority woman-owned independent small business in West Windsor, NJ. Ever since our studio opened its doors more than 18 years ago, we’ve made it our goal to create a fun and relaxing atmosphere where you can spend time with your family and friends. We are conveniently located close to Route 1 and Quakerbridge Mall."
        descLabel.font = UIFont(name: "Helvetica Light", size: 20)
        descLabel.textAlignment = .center
        descLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(descLabel)

        
        setupConstraints()
        // Do any additional setup after loading the view.
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            buildingImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            buildingImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            buildingImage.heightAnchor.constraint(equalToConstant: 280),
            buildingImage.widthAnchor.constraint(equalToConstant: 366)
        ])
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: buildingImage.bottomAnchor, constant: 20),
            titleLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            descLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            descLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            descLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
            ])
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

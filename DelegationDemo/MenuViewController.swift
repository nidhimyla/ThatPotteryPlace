//
//  MenuViewController.swift
//  ThatPotteryPlace
//
//  Created by Nidhi Mylavarapu on 1/12/23.
//

import UIKit
import SwiftUI
import MapKit

class MenuViewController: UIViewController{

    var phone = UIButton()
    var location = UIButton()
    var welcome = UILabel()
    var ourServices = UIButton()
    var yourCart = UIButton()
    var about = UIButton()
    var instagram = UIButton()
    var tiktok = UIButton()
    var facebook = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Menu"
        view.backgroundColor = .white
        
        let phonePic = UIImage(named: "phone")
        phone.setImage(phonePic, for: .normal)
        phone.addTarget(self, action: #selector(selectPhone), for: .touchUpInside)
        phone.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(phone)
        
        let locationPic = UIImage(named: "location")
        location.setImage(locationPic, for: .normal)
        location.addTarget(self, action: #selector(selectLocation), for: .touchUpInside)
        location.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(location)
        
        welcome.text = "Welcome!"
        welcome.font = UIFont(name: "Helvetica Light", size: 60)
        welcome.adjustsFontSizeToFitWidth = true
        welcome.textAlignment = .center
        welcome.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(welcome)
        
        let pastelPink = UIColor(Color("PastelPink"))
        ourServices.backgroundColor = pastelPink
        ourServices.layer.cornerRadius = 35
        ourServices.setTitle("Our Services", for: .normal)
        ourServices.titleLabel?.font = UIFont(name: "Helvetica Light", size: 50)
        ourServices.setTitleColor(.black, for: .normal)
        ourServices.layer.borderWidth = 1
        ourServices.addTarget(self, action: #selector(selectOurServices), for: .touchUpInside)
        ourServices.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ourServices)
        
        let pastelBlue = UIColor(Color("PastelBlue"))
        yourCart.backgroundColor = pastelBlue
        yourCart.layer.cornerRadius = 35
        yourCart.setTitle("Your Cart", for: .normal)
        yourCart.titleLabel?.font = UIFont(name: "Helvetica Light", size: 42)
        yourCart.setTitleColor(.black, for: .normal)
        yourCart.layer.borderWidth = 1
        yourCart.addTarget(self, action: #selector(selectYourCart), for: .touchUpInside)
        yourCart.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(yourCart)
        
        let pastelGreen = UIColor(Color("PastelGreen"))
        about.backgroundColor = pastelGreen
        about.layer.cornerRadius = 35
        about.setTitle("About", for: .normal)
        about.titleLabel?.font = UIFont(name: "Helvetica Light", size: 42)
        about.setTitleColor(.black, for: .normal)
        about.layer.borderWidth = 1
        about.addTarget(self, action: #selector(selectPaintbrush), for: .touchUpInside)
        about.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(about)
        
        let instagramIcon = UIImage(named: "instagram")
        instagram.setBackgroundImage(instagramIcon, for: .normal)
        instagram.addTarget(self, action: #selector(selectInstagram), for: .touchUpInside)
        instagram.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(instagram)
        
        let tiktokIcon = UIImage(named: "tiktok")
        tiktok.setBackgroundImage(tiktokIcon, for: .normal)
        tiktok.addTarget(self, action: #selector(selectTikTok), for: .touchUpInside)
        tiktok.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tiktok)
        
        let facebookIcon = UIImage(named: "facebook")
        facebook.setBackgroundImage(facebookIcon, for: .normal)
        facebook.addTarget(self, action: #selector(selectFacebook), for: .touchUpInside)
        facebook.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(facebook)
        
        setupConstraints()
    }
    func setupConstraints(){
        
        NSLayoutConstraint.activate([
            phone.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            phone.widthAnchor.constraint(equalToConstant: 40),
            phone.heightAnchor.constraint(equalToConstant: 40),
            phone.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            location.trailingAnchort.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            location.widthAnchor.constraint(equalToConstant: 40),
            location.heightAnchor.constraint(equalToConstant: 40),
            location.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
        ])
        
        NSLayoutConstraint.activate([
            welcome.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            welcome.topAnchor.constraint(equalTo: location.bottomAnchor, constant: 15),
            welcome.heightAnchor.constraint(equalToConstant: 100),
            welcome.widthAnchor.constraint(equalTo: ourServices.widthAnchor)
        ])
        
        NSLayoutConstraint.activate([
            ourServices.topAnchor.constraint(equalTo: welcome.bottomAnchor, constant: 15),
            ourServices.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            ourServices.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            ourServices.heightAnchor.constraint(equalToConstant: 125)
        ])
        
        NSLayoutConstraint.activate([
            yourCart.topAnchor.constraint(equalTo: ourServices.bottomAnchor, constant: 20),
            yourCart.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            yourCart.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            yourCart.heightAnchor.constraint(equalToConstant: 125)
        ])
        
        NSLayoutConstraint.activate([
            about.topAnchor.constraint(equalTo: yourCart.bottomAnchor, constant: 20),
            about.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            about.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            about.heightAnchor.constraint(equalToConstant: 125)
        ])
        
        NSLayoutConstraint.activate([
            instagram.topAnchor.constraint(equalTo: about.bottomAnchor, constant: 40),
            instagram.widthAnchor.constraint(equalToConstant: 75),
            instagram.heightAnchor.constraint(equalToConstant: 75)
        ])
        
        NSLayoutConstraint.activate([
            tiktok.topAnchor.constraint(equalTo: about.bottomAnchor, constant: 30),
            tiktok.leadingAnchor.constraint(equalTo: instagram.trailingAnchor, constant: 10),
            tiktok.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            tiktok.widthAnchor.constraint(equalToConstant: 75),
            tiktok.heightAnchor.constraint(equalToConstant: 75)
        ])
        
        NSLayoutConstraint.activate([
            facebook.topAnchor.constraint(equalTo: about.bottomAnchor, constant: 40),
            facebook.leadingAnchor.constraint(equalTo: tiktok.trailingAnchor, constant: 10),
            facebook.widthAnchor.constraint(equalToConstant: 75),
            facebook.heightAnchor.constraint(equalToConstant: 75)
        ])
    }
    
    @objc
    func selectPhone(){
        let callMessage = UIAlertController(title: "Call That Pottery Place?", message: "", preferredStyle: .alert)
        let call = UIAlertAction(title: "(609) 716-6200", style: .default, handler: {(action) -> Void in
            print("Calling")
        })
        callMessage.addAction(call)
        let cancel = UIAlertAction(title: "Cancel", style: .default, handler: {(action) -> Void in
        })
        callMessage.addAction(cancel)
        self.present(callMessage, animated: true, completion: nil)
    }
    
    @objc
    func selectLocation(){
        let mapMessage = UIAlertController(title: "Directions to That Pottery Place", message: "Select an option below", preferredStyle: .alert)
        let appleMap = UIAlertAction(title: "Apple Maps", style: .default, handler: {(action) -> Void in
            self.openAppleMap()
        })
        mapMessage.addAction(appleMap)
        let googleMap = UIAlertAction(title: "Google Maps", style: .default, handler: {(action) -> Void in
            self.openGoogleMap()
        })
        mapMessage.addAction(googleMap)
        let cancel = UIAlertAction(title: "Cancel", style: .default, handler: {(action) -> Void in})
        mapMessage.addAction(cancel)
        self.present(mapMessage, animated: true, completion: nil)
    }
    
    func openAppleMap(){
        UIApplication.shared.openURL(NSURL(string: "https://maps.apple.com/?address=217%20Clarksville%20Rd,%20Unit%2014,%20Princeton%20Junction,%20NJ%20%2008550,%20United%20States&auid=3615763307141143775&ll=40.300381,-74.641370&lsp=9902&q=That%20Pottery%20Place&t=m")! as URL)
    }
    
    func openGoogleMap(){
        UIApplication.shared.openURL(NSURL(string: "https://www.google.com/maps/place/That+Pottery+Place/@40.30073,-74.6432495,17z/data=!3m1!4b1!4m5!3m4!1s0x89c3e102b48e4f67:0x401ae057216a2436!8m2!3d40.3007259!4d-74.6410555")! as URL)
    }
    
    @objc
    func selectPaintbrush(){
        present(AboutViewController(), animated: true)
    }
    
    @objc
    func selectOurServices(){
        navigationController?.pushViewController(ServicesViewController(), animated: true)
    }
    
    @objc
    func selectYourCart(){
        navigationController?.pushViewController(YourCartViewController(), animated: true)
    }
    
    @objc
    func selectInstagram(){
        UIApplication.shared.openURL(NSURL(string: "https://instagram.com/thatpotteryplace?igshid=MDM4ZDc5MmU=")! as URL)
    }
    
    @objc
    func selectTikTok(){
        UIApplication.shared.openURL(NSURL(string: "https://www.tiktok.com/@thatpotteryplace?_t=8Z0Fge2Yl5f&_r=1")! as URL)
    }
    
    @objc
    func selectFacebook(){
        UIApplication.shared.openURL(NSURL(string: "https://www.facebook.com/ThatPotteryPlaceWestWindsor/")! as URL)
    }
    
}

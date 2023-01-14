//
//  MenuViewController.swift
//  ThatPotteryPlace
//
//  Created by Nidhi Mylavarapu on 1/12/23.
//

import UIKit
import SwiftUI
import MapKit

class MenuViewController: UIViewController {

    var phone = UIButton()
    var location = UIButton()
    var paintbrush = UIButton()
    var camera = UIButton()
    var ourServices = UIButton()
    var trackYourPottery = UIButton()
    var bookAnAppointment = UIButton()
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
        
        let paintbrushPic = UIImage(named: "paintbrush")
        paintbrush.setImage(paintbrushPic, for: .normal)
        paintbrush.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(paintbrush)
        
        let cameraPic = UIImage(named: "camera")
        camera.setImage(cameraPic, for: .normal)
        camera.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(camera)
        
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
        
        let pastelGreen = UIColor(Color("PastelGreen"))
        trackYourPottery.backgroundColor = pastelGreen
        trackYourPottery.layer.cornerRadius = 35
        trackYourPottery.setTitle("Track Your Pottery", for: .normal)
        trackYourPottery.titleLabel?.font = UIFont(name: "Helvetica Light", size: 35)
        trackYourPottery.setTitleColor(.black, for: .normal)
        trackYourPottery.layer.borderWidth = 1
        trackYourPottery.addTarget(self, action: #selector(selectTrackYourPottery), for: .touchUpInside)
        trackYourPottery.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(trackYourPottery)
        
        let pastelBlue = UIColor(Color("PastelBlue"))
        bookAnAppointment.backgroundColor = pastelBlue
        bookAnAppointment.layer.cornerRadius = 35
        var title = """
        Book an
        Appointment
        """
        bookAnAppointment.titleLabel?.numberOfLines = 0
        bookAnAppointment.titleLabel?.textAlignment = .center
        bookAnAppointment.setTitle(title, for: .normal)
        bookAnAppointment.titleLabel?.font = UIFont(name: "Helvetica Light", size: 45)
        bookAnAppointment.setTitleColor(.black, for: .normal)
        bookAnAppointment.layer.borderWidth = 1
        bookAnAppointment.addTarget(self, action: #selector(selectBookAnAppointment), for: .touchUpInside)
        bookAnAppointment.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bookAnAppointment)
        
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
            location.leadingAnchor.constraint(equalTo: phone.trailingAnchor, constant: 10),
            location.widthAnchor.constraint(equalToConstant: 40),
            location.heightAnchor.constraint(equalToConstant: 40),
            location.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
        ])
        
        NSLayoutConstraint.activate([
            paintbrush.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            paintbrush.widthAnchor.constraint(equalToConstant: 40),
            paintbrush.heightAnchor.constraint(equalToConstant: 40),
            paintbrush.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
        ])
        
        NSLayoutConstraint.activate([
            camera.trailingAnchor.constraint(equalTo: paintbrush.leadingAnchor, constant: -10),
            camera.widthAnchor.constraint(equalToConstant: 40),
            camera.heightAnchor.constraint(equalToConstant: 40),
            camera.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
        ])
        
        NSLayoutConstraint.activate([
            ourServices.topAnchor.constraint(equalTo: phone.bottomAnchor, constant: 20),
            ourServices.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            ourServices.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            ourServices.heightAnchor.constraint(equalToConstant: 125)
        ])
        
        NSLayoutConstraint.activate([
            bookAnAppointment.topAnchor.constraint(equalTo: ourServices.bottomAnchor, constant: 20),
            bookAnAppointment.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            bookAnAppointment.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            bookAnAppointment.heightAnchor.constraint(equalToConstant: 125)
        ])
        
        NSLayoutConstraint.activate([
            trackYourPottery.topAnchor.constraint(equalTo: bookAnAppointment.bottomAnchor, constant: 20),
            trackYourPottery.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            trackYourPottery.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            trackYourPottery.heightAnchor.constraint(equalToConstant: 125)
        ])
        
        NSLayoutConstraint.activate([
            instagram.topAnchor.constraint(equalTo: trackYourPottery.bottomAnchor, constant: 40),
            instagram.widthAnchor.constraint(equalToConstant: 75),
            instagram.heightAnchor.constraint(equalToConstant: 75)
        ])
        
        NSLayoutConstraint.activate([
            tiktok.topAnchor.constraint(equalTo: trackYourPottery.bottomAnchor, constant: 40),
            tiktok.leadingAnchor.constraint(equalTo: instagram.trailingAnchor, constant: 10),
            tiktok.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            tiktok.widthAnchor.constraint(equalToConstant: 75),
            tiktok.heightAnchor.constraint(equalToConstant: 75)
        ])
        
        NSLayoutConstraint.activate([
            facebook.topAnchor.constraint(equalTo: trackYourPottery.bottomAnchor, constant: 40),
            facebook.leadingAnchor.constraint(equalTo: tiktok.trailingAnchor, constant: 10),
            facebook.widthAnchor.constraint(equalToConstant: 75),
            facebook.heightAnchor.constraint(equalToConstant: 75)
        ])
    }
    
    @objc
    func selectPhone(){
        var callMessage = UIAlertController(title: "Call That Pottery Place?", message: "", preferredStyle: .alert)
        let call = UIAlertAction(title: "123-456-7890", style: .default, handler: {(action) -> Void in
            print("Calling")
        })
        callMessage.addAction(call)
        
        self.present(callMessage, animated: true, completion: nil)
    }
    
    @objc
    func selectLocation(){
        var mapMessage = UIAlertController(title: "Directions to That Pottery Place", message: "Select an option below", preferredStyle: .alert)
        let appleMap = UIAlertAction(title: "Apple Maps", style: .default, handler: {(action) -> Void in
            self.openAppleMap()
        })
        mapMessage.addAction(appleMap)
        let googleMap = UIAlertAction(title: "Google Maps", style: .default, handler: {(action) -> Void in
            self.openGoogleMap()
        })
        mapMessage.addAction(googleMap)
        
        self.present(mapMessage, animated: true, completion: nil)
    }
    
    func openAppleMap(){
        UIApplication.shared.openURL(NSURL(string: "https://maps.apple.com/?address=217%20Clarksville%20Rd,%20Unit%2014,%20Princeton%20Junction,%20NJ%20%2008550,%20United%20States&auid=3615763307141143775&ll=40.300381,-74.641370&lsp=9902&q=That%20Pottery%20Place&t=m")! as URL)
    }
    
    func openGoogleMap(){
        UIApplication.shared.openURL(NSURL(string: "https://www.google.com/maps/place/That+Pottery+Place/@40.30073,-74.6432495,17z/data=!3m1!4b1!4m5!3m4!1s0x89c3e102b48e4f67:0x401ae057216a2436!8m2!3d40.3007259!4d-74.6410555")! as URL)
    }
    
    @objc
    func selectOurServices(){
        navigationController?.pushViewController(ServicesViewController(), animated: true)
    }
    
    @objc
    func selectBookAnAppointment(){
        navigationController?.pushViewController(BookAnAppointmentViewController(), animated: true)
    }
    
    @objc
    func selectTrackYourPottery(){
        navigationController?.pushViewController(TrackYourPotteryViewController(), animated: true)
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

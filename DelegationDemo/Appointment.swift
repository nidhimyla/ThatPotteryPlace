//
//  Appointment.swift
//  DelegationDemo
//
//  Created by Nidhi Mylavarapu on 1/17/23.
//

import Foundation
import UIKit

class Appointment {
    var numOfGuests: String
    var date: String
    var time: String
    var service: String
    var estimatedPrice: String

    init(numOfGuests: String, date: String, time: String, service: String, estimatedPrice: String) {
        self.numOfGuests = numOfGuests
        self.date = date
        self.time = time
        self.service = service
        self.estimatedPrice = estimatedPrice
    }
}

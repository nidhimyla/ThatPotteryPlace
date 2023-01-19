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
    var dateAndTime: String
    var service: String
    var estimatedPrice: String

    init(numOfGuests: String, dateAndTime: String, service: String, estimatedPrice: String) {
        self.numOfGuests = numOfGuests
        self.dateAndTime = dateAndTime
        self.service = service
        self.estimatedPrice = estimatedPrice
    }
}

//
//  Service.swift
//  DelegationDemo
//
//  Created by Nidhi Mylavarapu on 1/13/23.
//

import Foundation
import UIKit

class Service {
    var name: String
    var description: String
    var servicePicName: String
    var pricing: String

    init(name: String, description: String, servicePicName: String, pricing: String) {
        self.name = name
        self.description = description
        self.servicePicName = servicePicName
        self.pricing = pricing
    }
}

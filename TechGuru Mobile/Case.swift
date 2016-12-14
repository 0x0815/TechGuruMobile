//
//  Cases.swift
//  TechGuru Mobile
//
//  Created by Tobi on 14.12.16.
//  Copyright © 2016 A Crowd Apart. All rights reserved.
//

import Foundation

class Case {
    var id: Int
    var servicenumber: String
    var status: Int
    var dayin: Int
    var customernumber: Int
    var customername: String
    var customermail: String
    var customertel: String
    var customermobil: String
    var customerfax: String
    var articlenumber: Int
    var articledescription: String
    var serialnumber: String
    var tasknumber: String
    var errordescription: String
    var manufacturernumber: String
    var user: String
    var lastchangedate: Int
    
    init(id: Int, servicenumber: String, status: Int, dayin: Int, customernumber: Int, customername: String, customermail: String, customertel: String, customermobil: String, customerfax: String, articlenumber: Int, articledescription: String, serialnumber: String, tasknumber: String, errordescription: String, manufacturernumber: String, user: String, lastchangedate: Int) {
        self.id = id
        self.servicenumber = servicenumber
        self.status = status
        self.dayin = dayin
        self.customernumber = customernumber
        self.customername = customername
        self.customermail = customermail
        self.customertel = customertel
        self.customermobil = customermobil
        self.customerfax = customerfax
        self.articlenumber = articlenumber
        self.articledescription = articledescription
        self.serialnumber = serialnumber
        self.tasknumber = tasknumber
        self.errordescription = errordescription
        self.manufacturernumber = manufacturernumber
        self.user = user
        self.lastchangedate = lastchangedate
    }
}

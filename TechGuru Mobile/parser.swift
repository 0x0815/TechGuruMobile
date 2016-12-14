//
//  parser.swift
//  TechGuru Mobile
//
//  Created by Tobi on 14.12.16.
//  Copyright © 2016 A Crowd Apart. All rights reserved.
//

import Foundation

class Parser {
    func parseJson() -> [Case] {
        var data: [Case] = []
        
        let url = URL(string:"http://api.rootgeek.org/get/")
        
        do{
            let apiData = try Data(contentsOf: url!)
            let allCases = try JSONSerialization.jsonObject(with: apiData, options: JSONSerialization.ReadingOptions.allowFragments) as! [String : AnyObject]
            if let jsonArray = allCases["data"] {
                if jsonArray.count != 0 {
                    for index in 0...jsonArray.count-1 {
                        let jsonObject = jsonArray[index] as! [String : AnyObject]
                        data.append(Case(id: Int(jsonObject["id"] as! String)!,
                                         servicenumber: jsonObject["servicenumber"] as! String,
                                         status: Int(jsonObject["status"] as! String)!,
                                         dayin: Int(jsonObject["dayin"] as! String)!,
                                         customernumber: Int(jsonObject["customernumber"] as! String)!,
                                         customername: jsonObject["customername"] as! String,
                                         customermail: jsonObject["customermail"] as! String,
                                         customertel: jsonObject["customertel"] as! String,
                                         customermobil: jsonObject["customermobil"] as! String,
                                         customerfax: jsonObject["customerfax"] as! String,
                                         articlenumber: Int(jsonObject["articlenumber"] as! String)!,
                                         articledescription: jsonObject["articledescription"] as! String,
                                         serialnumber: jsonObject["serialnumber"] as! String,
                                         tasknumber: jsonObject["tasknumber"] as! String,
                                         errordescription: jsonObject["errordescription"] as! String,
                                         manufacturernumber: jsonObject["manufacturernumber"] as! String,
                                         user: jsonObject["user"] as! String,
                                         lastchangedate: Int(jsonObject["lastchangedate"] as! String)!))
                    }
                }
            }
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        
        return data
    }
}

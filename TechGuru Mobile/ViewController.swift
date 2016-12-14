//
//  ViewController.swift
//  TechGuru Mobile
//
//  Created by Tobi on 14.12.16.
//  Copyright © 2016 A Crowd Apart. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let parser = Parser()
    var data: [Case] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data = parser.parseJson()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "caseCell") as! caseCell
        let dateFormatter = DateFormatter()
        let serviceCase = data[indexPath.row]
        
        let date = NSDate(timeIntervalSince1970: Double(serviceCase.dayin))
        
        cell.statusLabel.text = String(serviceCase.status)
        cell.serviceNumberLabel.text = serviceCase.servicenumber
        cell.customerNameLabel.text = serviceCase.customername
        cell.dayInLabel.text = dateFormatter.string(from: date as Date)
        
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        
        return cell
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  Segment TableView
//
//  Created by Fahim Rahman on 23/12/19.
//  Copyright © 2019 Fahim Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentTableView: Int = 0
    
    var data = [
    [
        "Cricket",
        "Football",
        "Soccer",
        "Basketball",
        "Tennis",
        "Badminton"
    ],[
        "Apple",
        "Orange",
        "Pinaple",
        "Banana",
        "Jackfruit",
        "Litchi"
    ]
]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    @IBAction func segmentSwitch(_ sender: UISegmentedControl) {
        
        currentTableView = sender.selectedSegmentIndex
        tableView.reloadData()
    }
    
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data[currentTableView].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
     
        cell.label.text = data[currentTableView][indexPath.row]
        
        return cell
    }
}

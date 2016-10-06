//
//  TableViewController.swift
//  HellaCells
//
//  Created by Jacqueline Minneman on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var numbersList: [Int] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        generateNumbersList()
        
    }
    
    func generateNumbersList() {
            for i in 1...100 {
                numbersList.append(i)
            }
        }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return numbersList.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
        
        let number = numbersList[indexPath.row]
        
        cell.textLabel?.text = String(number)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "showDetail" { return }
        if let destination = segue.destination as? ViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            destination.number = numbersList[indexPath.row]
        }
    }
    

}

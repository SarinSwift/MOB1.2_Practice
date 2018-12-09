//
//  ImformationTableViewController.swift
//  PracticeCollectionViews
//
//  Created by Sarin Swift on 12/8/18.
//  Copyright © 2018 sarinswift. All rights reserved.
//

import Foundation
import UIKit

class InformationTableViewController: UITableViewController {
    
    let information = ["info1", "info2", "info3", "info4", "info5", "info6", "info7", "info8", "info9", "info10"]
    
    @IBOutlet var tableViewInfo: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func doneButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addButton(_ sender: UIBarButtonItem) {
        let detailedViewController = DetailedViewController()
        self.navigationController?.pushViewController(detailedViewController, animated: true)
    }
    
    // UITableViewCOntroller already conforms to the delegate and datasource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return information.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCellId", for: indexPath) as! NameCell
        cell.nameLabel.text = information[indexPath.row]
        
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}


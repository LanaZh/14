//
//  TableViewController.swift
//  14
//
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate {
    
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = UIView(frame: CGRect(x: 0, y: 500, width: self.view.frame.width, height: 400))
        self.view.layer.cornerRadius = 10
    tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 1))
        
    view.addSubview(tableView)
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
}



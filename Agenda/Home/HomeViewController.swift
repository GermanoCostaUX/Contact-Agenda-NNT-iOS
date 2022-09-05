//
//  ViewController.swift
//  Agenda
//
//  Created by user217597 on 8/31/22.
//

import UIKit

class HomeViewController: UITableViewController {
    
    private var contacts: [Contact] = [
        .init(name: "Germano Costa", number: "+55 85 097875641"),
        .init(name: "Francisco Junior", number: "+55 88 887882156"),
        .init(name: "Mateus Sales", number: "+55 11 987833241")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        setupRightButtonItem()
        title = "Agenda"
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count // return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = HomeTableViewCell()
        let contact = contacts[indexPath.row]
        // cell.setup(name: "Germano Costa", number: "+55 85 097875641")
        cell.setup(name: contact.name, number: contact.number)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 78
    }
    
    private func setupRightButtonItem() {
        let barButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapRightButton))
        navigationItem.rightBarButtonItem = barButtonItem
    }
    
    @objc
    private func didTapRightButton() {
        
        print(">>> Add Contact Button")
        
    }
    
}


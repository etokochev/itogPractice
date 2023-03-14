//
//  ContactsViewController.swift
//  itogTestGulzat
//
//  Created by Erzhan Tokochev on 3/14/23.
//

import UIKit

class ContactsViewController: UIViewController {
    private let cellID = "cell"
    
    @IBOutlet weak var contactsTableView: UITableView!
    
    private var contact: [Contact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My Contacts"
        contactsTableView.dataSource = self
        contactsTableView.delegate = self
        contactsTableView.register(UINib(nibName: "HumanTableViewCell", bundle: nil), forCellReuseIdentifier: cellID)
        initData()
    }
    private func initData() {
        contact.append(Contact(avatar: "Jana", name: "Jane Cooper", number: "(270) 555-0117"))
        contact.append(Contact(avatar: "Devon", name: "Devon Lane", number: "(308) 555-0121"))
        contact.append(Contact(avatar: "Darrell", name: "Darrell Steward", number: "(684) 555-0102"))
        contact.append(Contact(avatar: "Bake", name: "Devon Lane", number: "(704) 555-0127"))
        contact.append(Contact(avatar: "Courtney", name: "Courtney Henry", number: "(505) 555-0125"))
        contact.append(Contact(avatar: "Wade", name: "Wade Warren", number: "(225) 555-0118"))
        contact.append(Contact(avatar: "Bessie", name: "Bessie Cooper", number: "(406) 555-0120"))
        contact.append(Contact(avatar: "Robert", name: "Robert Fox", number: "(480) 555-0103"))
        contact.append(Contact(avatar: "Jacob", name: "Jacob Jones", number: "(702) 555-0122"))
        contact.append(Contact(avatar: "Jenny", name: "Jenny Wilson", number: "(239) 555-0108"))
    }
}

extension ContactsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = contactsTableView.dequeueReusableCell(withIdentifier: "cell") as! HumanTableViewCell
        cell.initUI(logo: contact[indexPath.row].avatar, nam: contact[indexPath.row].name, num: contact[indexPath.row].number)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        63
    }
}



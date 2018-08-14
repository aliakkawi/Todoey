//
//  ToDoListViewController.swift
//  Todoey
//
//  Created by Ali Akkawi on 14/08/2018.
//  Copyright © 2018 Ali Akkawi. All rights reserved.
//

import UIKit

class ToDoListViewController: UIViewController {

    var items = [Item]()
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        items.append(Item(name: "Buy some food", isDone: false))
        items.append(Item(name: "Take an iOS course", isDone: false))
        items.append(Item(name: "Clean the house", isDone: false))
        items.append(Item(name: "Buy some food", isDone: false))
        items.append(Item(name: "Take an iOS course", isDone: false))
        items.append(Item(name: "Clean the house", isDone: false))
        items.append(Item(name: "Buy some food", isDone: false))
        items.append(Item(name: "Take an iOS course", isDone: false))
        items.append(Item(name: "Clean the house", isDone: false))
        items.append(Item(name: "Buy some food", isDone: false))
        items.append(Item(name: "Take an iOS course", isDone: false))
        items.append(Item(name: "Clean the house", isDone: false))
        items.append(Item(name: "Buy some food", isDone: false))
        items.append(Item(name: "Take an iOS course", isDone: false))
        items.append(Item(name: "Clean the house", isDone: false))
        items.append(Item(name: "Buy some food", isDone: false))
        items.append(Item(name: "Take an iOS course", isDone: false))
        items.append(Item(name: "Clean the house", isDone: false))
        items.append(Item(name: "Buy some food", isDone: false))
        items.append(Item(name: "Take an iOS course", isDone: false))
        items.append(Item(name: "Clean the house", isDone: false))
        items.append(Item(name: "Buy some food", isDone: false))
        items.append(Item(name: "Take an iOS course", isDone: false))
        items.append(Item(name: "Clean the house", isDone: false))
    }


}

extension ToDoListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "itemcell", for: indexPath) as? ItemsTableViewCell {
            
            let item = items[indexPath.row]
            cell.textLabel?.text = item.name
            if item.isDone {
                
                cell.accessoryType = .checkmark
            }else {
                
                cell.accessoryType = .none
            }
            
            
            
            return cell
        }else {
            
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let item = items[indexPath.row]
        item.isDone = !item.isDone
        tableView.reloadRows(at: [indexPath], with: .none)
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
}

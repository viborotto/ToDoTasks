//
//  TasksTableViewController.swift
//  ToDoTasks
//
//  Created by Vittoria Borotto on 17/03/20.
//  Copyright © 2020 Digital Innovation One. All rights reserved.
//

import UIKit

let category = Category(name: "Shopping List", color: UIColor.green)

let tasks: [Task] = [
    Task(name: "This is my shopping list task", date: Date(), category: category),
    Task(name: "Homework", date: Date(), category: category),
]

class TasksTableViewController: UITableViewController {

    private var dateFormatter: DateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    //chamado toda vez que tiver uma celula na tabela
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskTableViewCell
        let task = tasks[indexPath.row]
        
        dateFormatter.dateFormat = "HH:mm"
        cell.hourLabel.text = dateFormatter.string(from: task.date)
        
        dateFormatter.dateFormat = "dd/MM/yyyy"
        cell.dateLabel.text = dateFormatter.string(from: task.date)
        
        cell.categoryNameLabel.text = task.category.name
        cell.categoryView.backgroundColor = task.category.color
        cell.taskDescriptionLabel.text = task.name
        
        return cell
    }
}

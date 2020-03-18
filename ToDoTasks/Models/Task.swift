//
//  Task.swift
//  ToDoTasks
//
//  Created by Vittoria Borotto on 17/03/20.
//  Copyright © 2020 Digital Innovation One. All rights reserved.
//

import Foundation

struct Task {
    var id = UUID()
    var name: String = ""
    var date: Date = Date()
    var category: Category = Category(name: "Market", color: .black)
}

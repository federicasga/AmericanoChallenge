//
//  TaskModel.swift
//  reminderapp
//
//  Created by Federica Sgammato on 12/12/24.
//

import Foundation
import SwiftData

@Model
class Reminder {
    var title: String
    var urgency: Urgency
    var focusHour: Int
    var focusMinutes: Int
    var focusSeconds: Int
    var breakHour: Int
    var breakMinutes: Int
    var breakSeconds: Int
    var completed: Bool
    
    init(title: String, urgency: Urgency, focusHour: Int, focusMinutes: Int, focusSeconds: Int, breakHour: Int, breakMinutes: Int, breakSeconds: Int, completed: Bool) {
        self.title = title
        self.urgency = urgency
        self.focusHour = focusHour
        self.focusMinutes = focusMinutes
        self.focusSeconds = focusSeconds
        self.breakHour = breakHour
        self.breakMinutes = breakMinutes
        self.breakSeconds = breakSeconds
        self.completed = completed
    }
}

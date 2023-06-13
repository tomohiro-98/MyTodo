//
//  Draft.swift
//  MyTodo
//
//  Created by user on 2023/06/12.
//

import SwiftUI

struct Draft: View {
    @State var taskTitle = ""
    @EnvironmentObject var userData: UserDate
    
    var body: some View {
//        TextField("タスクを入力して下さい", text: $taskTitle,onCommit: {
        TextField("タスクを入力して下さい", text: $taskTitle).onSubmit {
            self.createTask()
            self.userData.isEditing = false
        }
    }
    func createTask(){
        let newTask = Task(title: self.taskTitle, checked: false)
        self.userData.tasks.insert(newTask, at: 0)
        self.taskTitle = ""
    }
}

struct Draft_Previews: PreviewProvider {
    static var previews: some View {
        Draft()
    }
}

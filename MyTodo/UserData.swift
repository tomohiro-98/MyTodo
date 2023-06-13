//
//  UserData.swift
//  MyTodo
//
//  Created by user on 2023/06/12.
//

import SwiftUI

class UserDate: ObservableObject {
    @Published var tasks = [
        Task(title: "記事探し", checked: true),
        Task(title: "タイピング練習", checked: false),
        Task(title: "アルゴ式", checked: true),
    ]
    
    @Published var isEditing: Bool = false
}

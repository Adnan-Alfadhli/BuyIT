//
//  AppManger.swift
//  buyIt
//
//  Created by Adnan Alfadhli on 01/04/2022.
//

import Foundation

class AppManger: ObservableObject{
    @Published var imageName: String
    @Published var title: String
    @Published var tasks: [SavingRow]
    
    init(){
        imageName = ""
        title = ""
        tasks = []
    }
    func changeDoneOfTask(index: Int){
        tasks[index].isDone.toggle()
    }
}

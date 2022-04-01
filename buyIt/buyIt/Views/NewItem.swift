//
//  NewIteam.swift
//  buyIt
//
//  Created by Adnan Alfadhli on 01/04/2022.
//

import SwiftUI

struct NewItem: View {
    @State var des: String = ""
    @State var isOn: Bool = false
    @ObservedObject var appManger : AppManger
    var body: some View {
        VStack(alignment: .leading){
            Text("Description")
            TextField("Enter Task description", text: $des)
                .textFieldStyle(.roundedBorder)
            HStack{
                Text("is done ?")
                Toggle("", isOn: $isOn)
            }
            
            Button {
                appManger.tasks.append(SavingRow(isDone: isOn, description: des))
            } label: {
                Text("Add Task")
            }

        }.padding()
    }
}

struct NewItem_Previews: PreviewProvider {
    static var previews: some View {
        NewItem(appManger: AppManger())
    }
}

//
//  HomeView.swift
//  buyIt
//
//  Created by Adnan Alfadhli on 01/04/2022.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var appManger : AppManger
    var body: some View {
        VStack(alignment: .leading){
            
            Image("header")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
            Group{
                Text("Title")
                    .font(.title)
                ScrollView{
                    VStack(alignment: .leading) {
                        ForEach(appManger.tasks){ task in
                            
                            RowView(task: task, appManger: appManger)
                        }
                        
                    }
                    
                    
                    
                }
            }.padding(.horizontal)
        }
        
    }
}
struct RowView: View{
    var task: SavingRow
    @ObservedObject var appManger : AppManger
    var body: some View{
        HStack{
            if task.isDone{
                Image(systemName: "checkmark.circle.fill")
            }else{
                Image(systemName: "circle")
            }
            
            Text(task.description)
                .font(.body)
        }
        .onTapGesture {
            appManger.changeDoneOfTask(index: 0)
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(appManger: AppManger())
    }
}


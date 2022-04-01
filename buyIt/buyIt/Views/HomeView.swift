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
        VStack{
            Image("header")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
            Text("Title")
            ScrollView{
                ForEach(appManger.tasks){ task in
                    RowView(task: task)
                }
                
            }
        }
    }
}
struct RowView: View{
    var task: SavingRow
    var body: some View{
        HStack{
            if task.isDone{
                Image(systemName: "checkmark.circle.fill")
            }else{
                Image(systemName: "circle")
            }
            
            Text(task.description)
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(appManger: AppManger())
    }
}

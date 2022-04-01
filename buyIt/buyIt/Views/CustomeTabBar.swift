//
//  CustomeTabBar.swift
//  buyIt
//
//  Created by Adnan Alfadhli on 01/04/2022.
//

import SwiftUI

struct CustomeTabBar: View {
    var body: some View {
        TabView() {
            HomeView().tabItem {
                TabViewStyle(iconName: "house", tabName: "Home")
                
            }.tag(1)
            NewItem().tabItem {
                TabViewStyle(iconName: "plus", tabName: "")
                
            }.tag(2)
            Settings().tabItem {
                TabViewStyle(iconName: "gear", tabName: "Settings")
            }.tag(3)
        }
    }
}

struct TabViewStyle: View{
    var iconName: String
    var tabName : String
    var body: some View{
        VStack{
            Image(systemName: iconName)
            Text(tabName)
        }
    }
}


struct CustomeTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomeTabBar()
    }
}

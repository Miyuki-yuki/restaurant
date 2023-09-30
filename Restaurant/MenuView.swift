//
//  ContentView.swift
//  list0917
//
//  Created by Miyuki Kikuchi on 17/09/2023.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems: [MenuItem] = [MenuItem]()
    var dataService = DataService()
    var body: some View {
        
        List(menuItems) { item in
            
            MenuListRow(item: item)
            
        }.listStyle(.plain)
         .onAppear{
              //call for the data
             menuItems = dataService.getData()
            }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

//
//  MenuListRow.swift
//  list0917
//
//  Created by Miyuki Kikuchi on 19/09/2023.
//

import SwiftUI

struct MenuListRow: View {
    
    var item: MenuItem
    
    var body: some View {
        HStack{
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:70, height: 70)
                .cornerRadius(10)
            Text(item.name)
                .bold()
            //put the price on the right side
            Spacer()
            Text("$" + item.price)
        }
        .listRowSeparator(.hidden)
        .listRowBackground(Color(.systemMint).opacity(0.1))
    }
}

struct MenuListRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuListRow(item: MenuItem(name: "Test", price: "3.99", imageName: "chocolate-cake"))
    }
}

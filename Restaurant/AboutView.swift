//
//  AboutView.swift
//  Restaurant
//
//  Created by Miyuki Kikuchi on 20/09/2023.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading){
                Text("About")
                    .font(.largeTitle)
                    .bold()
                Image("bakery2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Heavenly Pastries")
                    .font(.title)
                Text("We are a charming countryside bakery located in Hitachi, Japan. Various kinds of pastries are all made with special ingredients.")
                
                Image("map")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("""
                Heavenly Pastries 🏠
                Hitachi　Japan
                """)
            }.padding(.horizontal)
            
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}

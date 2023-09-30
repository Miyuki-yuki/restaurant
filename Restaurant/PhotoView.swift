//
//  PhotoView.swift
//  Restaurant
//
//  Created by Miyuki Kikuchi on 21/09/2023.
//

import SwiftUI

struct PhotoView: View {
    
    @Binding var selectedPhoto: String
    @Binding var sheetVisible: Bool
    
    var body: some View {
        
        ZStack{
            
            Image(selectedPhoto)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack{
                HStack{
                    Spacer()
                    Button {
                        sheetVisible = false
                    }label: {
                        Image(systemName: "x.circle")
                            .scaleEffect(2)
                            .foregroundColor(.black)
                        
                    }
                    .padding()
                }
                Spacer()
            }
        }
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(selectedPhoto: Binding.constant("long1"), sheetVisible: Binding.constant(true))
    }
}

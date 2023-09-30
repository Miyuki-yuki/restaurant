//
//  GalleryView.swift
//  Restaurant
//
//  Created by Miyuki Kikuchi on 20/09/2023.
//

import SwiftUI

struct GalleryView: View {
    @State var photoData = [String]()
    @State var sheetVisible = false
    @State var selectedPhoto = ""
    
    var dataService = DataService()
    
    var body: some View {
        VStack (alignment: .leading){
                Text("Gallery")
                    .font(.largeTitle)
                    .bold()
                
                GeometryReader { proxy in
                    ScrollView(showsIndicators: false) {
                        LazyVGrid(columns: [GridItem(spacing: 10), GridItem(spacing: 10), GridItem(spacing:10)], spacing: 10 ) {
                            ForEach(photoData, id: \.self) { p in
                                
                                Image(p)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(maxWidth: (proxy.size.width)/2)
                                    .clipped()
                                    .onTapGesture {
                                        selectedPhoto = p
                                        sheetVisible = true
                                    }
                            }
                    }
                    }
                    
                }.onAppear{
                    photoData = dataService.getPhotos()
                }
                .sheet(isPresented: $sheetVisible){
                    PhotoView(selectedPhoto: $selectedPhoto, sheetVisible: $sheetVisible)
                }
        
        }
        Image("info2")
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}

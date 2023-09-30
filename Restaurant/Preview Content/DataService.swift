//
//  DataService.swift
//  list0917
//
//  Created by Miyuki Kikuchi on 19/09/2023.
//

import Foundation

struct DataService {
    
    func getData() -> [MenuItem] {
        
        return [MenuItem(name: "apple-pie", price: "4.50", imageName: "apple-pie"),MenuItem(name: "blueberry-tart", price: "3.50", imageName: "blueberry-tart"),MenuItem(name: "cheese-cake", price: "4.80", imageName: "cheese-cake"),MenuItem(name: "chocolate-cake", price: "4.90", imageName: "chocolate-cake"),MenuItem(name: "chocolate-orange-cake", price: "4.70", imageName: "chocolate-orange-cake"),MenuItem(name: "cookie", price: "4.55", imageName: "cookie"),MenuItem(name: "strawberry-and-cream-cake", price: "4.90", imageName: "strawberry-and-cream-cake"),MenuItem(name: "strawberry-cake", price: "5.50", imageName: "strawberry-cake"),
        ]
    }
    func getPhotos() -> [String] {
        
        return ["long1","long2","long3","long4","long5","long6","long7","long8","long9","long10","long11","long12","long13","long14","long15","long16","long17","long18","info1", "info2", "info3", "info4", "info5", "info6", "info7", "info8", "info9", "info10","info11", "info12"]
    }
}

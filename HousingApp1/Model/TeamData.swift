//
//  Data.swift
//  HousingApp1
//
//  Created by 신정연 on 2023/03/26.
//

import Foundation
import SwiftUI

struct TeamData: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var description: String
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
}

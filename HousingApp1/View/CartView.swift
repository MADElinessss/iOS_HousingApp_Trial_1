//
//  CartView.swift
//  HousingApp1
//
//  Created by 신정연 on 2023/03/26.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        VStack{
            NavigationLink(destination: SplashView()){
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 100, height: 100)
        }
        
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}

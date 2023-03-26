//
//  SplashView.swift
//  HousingApp1
//
//  Created by 신정연 on 2023/03/26.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        Image("splashLogo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300)
            .scaleEffect(1.5)
//            .withAnimation(.easeInOut(duration: 1.0))
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

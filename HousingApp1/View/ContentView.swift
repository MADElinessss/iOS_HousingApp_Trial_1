//
//  ContentView.swift
//  HousingApp1
//
//  Created by 신정연 on 2023/03/26.
//

import SwiftUI

struct ContentView: View {
    
    var teamData = [
        TeamData(id:1, name:"Eren", description: "Tech, 25, male\nGood at: something blah", imageName: "img1"),
        TeamData(id:2, name:"Kio", description: "Tech, 25, male\nGood at: something blah", imageName: "img2"),
        TeamData(id:3, name:"Koong", description: "Tech, 25, male\nGood at: something blah", imageName: "img3"),
        TeamData(id:4, name:"Madeline", description: "Tech, 26, female\nGood at: something blah", imageName: "img4"),
        TeamData(id:5, name:"Zam", description: "Tech, 24, female\nGood at: something blah", imageName: "img5")
    ]
    
    var columns : [GridItem] = Array(repeating: .init(.flexible()), count: 2)

    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(teamData){
                        teamMember in
                        NavigationLink(destination: DetailView(member:teamMember)) {
                            teamMember.image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 200)
                        }
                    }
                }
                .navigationTitle("Today's House")
            }
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

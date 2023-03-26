//
//  DetailView.swift
//  HousingApp1
//
//  Created by 신정연 on 2023/03/26.
//

import SwiftUI

struct DetailView: View {

    var member : TeamData
    
    var body: some View {
        ScrollView {
            VStack{
                //Header
                HStack {
                    HStack{
                        member.image
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .leading)
                            .cornerRadius(100.0)
                        Text(member.name)
                            .font(.title2)
                            .bold()
                        Spacer()
                        NavigationLink(destination: Text("Followers"),
                                       label:{ Text("Follow")
                                .font(.system(.footnote))
                                .foregroundColor(.white)
                            })
                            .padding()
                            .foregroundColor(.blue)
                            .background(Color.blue)
                            .cornerRadius(8.0)
                        
                    }
                }
                .padding(.horizontal)
                .padding(.vertical, 10)
                .background(Color.white)
                .shadow(radius: 0, y: 1)
                
                //body
                VStack{
                    member.image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    
                    VStack(alignment: .leading){
                        Text(member.name)
                            .font(.title2)
                            .padding(.bottom, 4)
                        Text(member.description)
                            .font(.body)
                        Spacer()
                    }
                    .padding()
                }
                .background(Color.white)
//                .padding()
                .cornerRadius(8.0)
                .shadow(radius: 0, y: 1)
            }
//            .navigationBarBackButtonHidden(true)
//            .navigationTitle(member.name)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let member = TeamData(id: 1, name: "Eren", description: "Click here", imageName: "img1")
        NavigationView {
            DetailView(member: member)
        }
        .previewDevice("iPhone 14 Pro")
    }
    
}

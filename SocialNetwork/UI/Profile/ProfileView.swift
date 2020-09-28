//
//  ProfileView.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 24/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    @State var selected = 0
    let data = [
        CollectionModel(id: "0", imageName: "Collection"),
        CollectionModel(id: "1", imageName: "Collection2"),
        CollectionModel(id: "2", imageName: "Collection"),
        CollectionModel(id: "3", imageName: "Collection2"),
        CollectionModel(id: "4", imageName: "Collection"),
        CollectionModel(id: "5", imageName: "Collection2"),
    ]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 15.0) {
                Text("@ifgs1")
                    .font(.custom("HelveticaNeue-Medium", size: 16.0))
                Image("ProfilePicture")
                Text("Ivan Garcia")
                    .font(.custom("HelveticaNeue-Medium", size: 20.0))
                Text("Photography lover from 8 years ")
                    .font(.custom("HelveticaNeue-Regular", size: 14.0))
                    .foregroundColor(Color("LightGrayColor"))
                
                SegmentedControlView(selected: self.$selected, segments: [Segment(id: 0, segmentName: "Photos"), Segment(id: 1, segmentName: "Likes"), Segment(id: 2, segmentName: "Marks")])
                ScrollView(showsIndicators: false) {
                    ForEach(data) { items in
                        CollectionView(data: items)
                    }
                }       .frame(maxWidth: 100)

            }
        }.background(Color(.white).edgesIgnoringSafeArea(.all))
        .navigationBarTitle("")
    }
}

struct CollectionView: View {
    let data: CollectionModel
    var body: some View {
        VStack {
            HStack() {
                ForEach(0..<2) { items in
                    Spacer()
                        Image(self.data.imageName)
                    Spacer()
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

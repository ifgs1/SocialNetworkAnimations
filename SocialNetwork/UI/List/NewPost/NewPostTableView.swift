//
//  NewPostTableView.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 24/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct NewPostTableView: View {
    var body: some View {
        VStack(spacing: 10) {
            NewPostList()
        }.background(Color(.white).edgesIgnoringSafeArea(.all))
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct NewPostList : View {
    var posts: [Post] = mockedPosts
    @State var selected = 0

    var body: some View {
        ScrollView(showsIndicators: false) {
            ForEach(posts) { post in
                NewPostCell(post: post)
            }
        }.background(Color("appereanceColor"))
        .onAppear {
         UITableView.appearance().separatorStyle = .none
        }
    }
}

struct NewPostTableView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostTableView()
    }
}

//
//  PostTableView.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 24/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct PostTableView: View {
	@State var selected = 0
	
	var body: some View {
        PostList()
	}
}

struct PostList : View {
	var posts: [Post] = mockedPosts
	@State var selected = 0
	
	var body: some View {
		ScrollView(showsIndicators: false) {
			ForEach(posts) { post in
                PostCell(post: post)
				    .padding()
			}
		}
	}
}

struct PostTableVieww_Previews: PreviewProvider {
    static var previews: some View {
        PostTableView()
    }
}

//
//  ExpandableView.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 25/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct ExpandableView: View {
    var description: String
    
    @Binding var isShow: Bool
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            Text(self.description)
                .foregroundColor(Color("DarkGrayColor"))
                .padding()
                .font(.custom("HelveticaNeue-Medium", size: 16))
        }
    }
}

struct ExpandableView_Previews: PreviewProvider {
    static var previews: some View {
        ExpandableView(description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Montes nascetur ridiculus mus mauris vitae. Nulla malesuada pellentesque elit eget gravida. Consectetur adipiscing elit ut aliquam purus sit amet. Porttitor leo a diam sollicitudin tempor. Tellus in hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Eu lobortis elementum nibh tellus molestie nunc non blandit massa. Massa enim nec dui nunc mattis enim ut. Elementum sagittis vitae et leo duis. Fringilla est ullamcorper eget nulla facilisi etiam dignissim diam. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Pretium viverra suspendisse potenti nullam ac tortor vitae. Eget felis eget nunc lobortis mattis. Diam quis enim lobortis scelerisque fermentum dui faucibus. Pellentesque nec nam aliquam sem et. Nam libero justo laoreet sit amet cursus sit. Mauris cursus mattis molestie a iaculis. Tortor posuere ac ut consequat.", isShow: .constant(true))
    }
}

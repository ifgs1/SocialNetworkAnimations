//
//  LandScapeInnerView.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 25/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct LandScapeInnerView: View {
    var title: String
    var backgroundImage: Image
    var description: String
    
    @Binding var isShow: Bool
    @State private var translation = CGSize.zero
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                TopView(title: self.title, backgroundImage: self.backgroundImage, isShow: self.$isShow)
                    .frame(height: 300)
                    .background(
                        self.backgroundImage
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: geo.size.width, maxHeight: geo.size.height)
                            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    )
                    .offset(y: self.translation.height)
                
                if self.isShow {
                    ScrollView {
                        ExpandableView(description: self.description, isShow: self.$isShow)
                            .transition(.opacity)
                    }
                }
            }
            .background(Color("appereanceColor"))
        }
    }
}

struct LandScapeInnerView_Previews: PreviewProvider {
    static var previews: some View {
        LandScapeInnerView(title: "Title", backgroundImage: Image("Photo4"), description: "description", isShow: .constant(true))
    }
}

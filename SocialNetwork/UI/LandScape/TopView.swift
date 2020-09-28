//
//  TopView.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 25/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct TopView: View {
    var title: String
    var backgroundImage: Image
    
    @Binding var isShow: Bool
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center, spacing: 0) {
                if self.isShow {
                    Rectangle()
                        .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color.clear)
                        .onTapGesture {
                            print(geo.safeAreaInsets.top)
                        }
                }
                HStack {
                    VStack(alignment: .leading) {
                        if isShow {
                            Button(action: {
                               
                            }) {
                                Image("Close")
                                    .renderingMode(.template)
                                    .foregroundColor(.white)
                            }.disabled(true)
                        }
                        Spacer()
                        Text(self.title)
                            .foregroundColor(.white)
                            .lineLimit(2)
                            .font(.custom("HelveticaNeue-Medium", size: 16))
                    }
                    Spacer()
                }
                .padding()
            }
        }
    }
}

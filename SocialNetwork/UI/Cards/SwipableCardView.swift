//
//  SwipableCardView.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 24/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//
import SwiftUI

struct SwipableCardView: View {
    @State var index = 0
    @Environment(\.presentationMode) var presentationMode
    @State var index1 = 0
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("Close")
                            .renderingMode(.template)
                            .foregroundColor(Color("appereanceColorInverted"))
                    }
                      Spacer()
                }
                .padding()
                HStack {
                    Text("Swipe!")
                        .font(.custom("HelveticaNeue-Bold", size: 40))
                        .foregroundColor(Color("appereanceColorInverted"))
                }
                .padding(.horizontal)
                CardView()
            }
        }
        .background(
            LinearGradient(gradient: .init(colors: [Color("appereanceColor")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SwipableCardView()
    }
}

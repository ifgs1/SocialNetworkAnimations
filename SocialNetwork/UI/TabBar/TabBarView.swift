//
//  TabBarView.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 24/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct TabBarPreviewView: View {
        
    var body: some View {
        
        VStack {
            Spacer()
            TabBarView(selected:  .constant(0))
        }.background(Color(.gray).edgesIgnoringSafeArea(.top))
    }
}

struct TabBarView: View  {
    @Binding var selected: Int
    @State private var isPresented = false

    var body : some View {
        ZStack(alignment: .top) {
            HorizontalTabBarView(selected: self.$selected)
                .padding()
                .padding(.horizontal, 22)
                .background(CircularCenteredButton())
            
            if #available(iOS 14.0, *) {
                Button(action: {
                    self.isPresented.toggle()
                }) {
                    Image("Icon").renderingMode(.original)
                        .padding(18)
                }        .fullScreenCover(isPresented: $isPresented, content: SwipableCardView.init)
                
                .background(Color("appereanceColor"))
                .clipShape(Circle())
                .offset(y: -32)
                .shadow(radius: 5)
            } else {
                // Fallback on earlier versions
            }
          }.background(Color("appereanceColor"))
    }
}

struct HorizontalTabBarView : View {
    
    @Binding var selected : Int
    
    var body : some View {
        VStack {
            HStack {
                Button(action: {
                    self.selected = 0
                }) {
                    Image(systemName: "house")
                }.foregroundColor(self.selected == 0 ? .blue : .gray)
                
                Spacer(minLength: 24)
                
                Button(action: {
                    
                    self.selected = 1
                    
                }) {
                    
                    Image(systemName: "person")
                    
                }.foregroundColor(self.selected == 1 ? .blue : .gray)
            }.background(Color("appereanceColor"))
        }.background(Color("appereanceColor"))

    }
}

struct CircularCenteredButton : View {
    
    var body : some View {
        Path{path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 55))
                        
            path.addLine(to: CGPoint(x: 0, y: 55))
            
        }.fill(Color("appereanceColor"))
        .rotationEffect(.init(degrees: 180))
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBarPreviewView()
    }
}

//
//  LandScapeView.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 24/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI
import Combine

class LandScapeViewControl: ObservableObject {
    @Published var anyTriggered = false
}

struct LandScapeView: View {
    var title: String
    var backgroundImage: Image
    var description: String
    
    @State var isShowDetail = false
    @EnvironmentObject var control: LandScapeViewControl
    
    var body: some View {
        GeometryReader { geo in
            LandScapeInnerView(title: self.title, backgroundImage: self.backgroundImage, description: self.description, isShow: self.$isShowDetail)
                .onTapGesture {
                    withAnimation(.interpolatingSpring(mass: 1, stiffness: 90, damping: 15, initialVelocity: 1)) {
                        self.isShowDetail.toggle()
                        self.control.anyTriggered.toggle()
                }    
            }
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .offset(x: self.isShowDetail ? -geo.frame(in: .global).minX : 0, y: self.isShowDetail ? -geo.frame(in: .global).minY : 0)
            .frame(height: self.isShowDetail ? UIScreen.main.bounds.height : nil)
            .frame(width: self.isShowDetail ? UIScreen.main.bounds.width : nil)
        }
        .frame(width: UIScreen.main.bounds.width - 40)
        .frame(height: 300)
        .offset(x: control.anyTriggered && !isShowDetail ? UIScreen.main.bounds.width : 0)
        .opacity(control.anyTriggered && !isShowDetail ? 0 : 1)
    }
}


#if DEBUG
struct LandScapeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandScapeView(title: "title test", backgroundImage: Image("Photo4"), description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Montes nascetur ridiculus mus mauris vitae. Nulla malesuada pellentesque elit eget gravida. Consectetur adipiscing elit ut aliquam purus sit amet. Porttitor leo a diam sollicitudin tempor. Tellus in hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Eu lobortis elementum nibh tellus molestie nunc non blandit massa. Massa enim nec dui nunc mattis enim ut. Elementum sagittis vitae et leo duis. Fringilla est ullamcorper eget nulla facilisi etiam dignissim diam. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Pretium viverra suspendisse potenti nullam ac tortor vitae. Eget felis eget nunc lobortis mattis. Diam quis enim lobortis scelerisque fermentum dui faucibus. Pellentesque nec nam aliquam sem et. Nam libero justo laoreet sit amet cursus sit. Mauris cursus mattis molestie a iaculis. Tortor posuere ac ut consequat.", isShowDetail: false)
            .environmentObject(LandScapeViewControl())
        }
    }
}
#endif

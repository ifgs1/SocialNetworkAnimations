//
//  CardView.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 27/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct CardView: View {
    @State var scrollingOffset = 0
    @State var mockedCards = [
        Card(id: 0, image: "photo3", position: 0,title: "Amazing Image from a photography expert"),
        Card(id: 1, image: "Collection", position: 0,title: "This image is pure art!"),
        Card(id: 2, image: "Photo4", position: 0,title: "Impressive photo"),
        Card(id: 3, image: "photo", position: 0,title: "One of the best pictures in the world")
    ]

    var body: some View {
        ZStack {
            ForEach(mockedCards.reversed()) { card in
                HStack {
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
                        Image(card.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: calculateScreenWidthForDevice(), height: (UIScreen.main.bounds.height / 1.8) - CGFloat(card.id - scrollingOffset) * 50)
                            .cornerRadius(15)
                        
                        VStack(alignment: .leading,spacing: 18) {
                            HStack {
                                
                                Text(card.title)
                                    .foregroundColor(.white)
                                    .font(.custom("HelveticaNeue-Bold", size: 26))
                                
                                Spacer()
                            }

                        }
                        .frame(width: calculateScreenWidthForDevice() - 40)
                        .padding(.leading,20)
                        .padding(.bottom,20)
                    }
                    .offset(x: card.id - scrollingOffset <= 2 ? CGFloat(card.id - scrollingOffset) * 30 : 60)
                    
                    Spacer(minLength: 0)
                }
                .contentShape(Rectangle())
                .offset(x: card.position)
                .gesture(DragGesture().onChanged( { (cardPosition) in
                    
                    withAnimation {
                        if cardPosition.translation.width < 0 && card.id != mockedCards.last!.id {
                            mockedCards[card.id].position = cardPosition.translation.width
                        }
                        else {
                            if card.id > 0 {
                                mockedCards[card.id - 1].position = -(calculateScreenWidthForDevice() + 60) + cardPosition.translation.width
                            }
                        }
                    }
                    
                }).onEnded( { (cardPosition) in
                    withAnimation{
                        if cardPosition.translation.width < 0 {
                            if -cardPosition.translation.width > 180 && card.id != mockedCards.last!.id {
                                                                
                                mockedCards[card.id].position = -(calculateScreenWidthForDevice() + 60)
                                scrollingOffset += 1
                            }
                            else {
                                mockedCards[card.id].position = 0
                            }
                        }
                        else {
                                                    
                            if card.id > 0 {
                                if cardPosition.translation.width > 180 {
                                    mockedCards[card.id - 1].position = 0
                                    scrollingOffset -= 1
                                }
                                else {
                                    mockedCards[card.id - 1].position = -(calculateScreenWidthForDevice() + 60)
                                }
                            }
                        }
                    }
                    
                }))
            }
        }
        .frame(height: UIScreen.main.bounds.height / 1.8)
        .padding(.horizontal,25)
        .padding(.top,25)

    }
    
    func calculateScreenWidthForDevice()->CGFloat{
        let screenSize = UIScreen.main.bounds.width - 50
        let screenWidth = screenSize - (2 * 30)
        return screenWidth
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}

//
//  LandScapeList.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 26/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct LandScapeList: View {
    var landscapes = ladandScapeMock
    @ObservedObject var control = LandScapeViewControl()

    var body: some View {
        ForEach(self.landscapes) { landscape in
            LandScapeView (
                title: landscape.title,
                backgroundImage: Image(landscape.image),
                description: landscape.description
            ).environmentObject(self.control)
        }
    }
}


struct LandScapeList_Previews: PreviewProvider {
    static var previews: some View {
        LandScapeList()
    }
}

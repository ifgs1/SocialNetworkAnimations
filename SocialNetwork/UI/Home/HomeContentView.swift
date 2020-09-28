//
//  HomeContentView.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 24/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct HomeContentView: View {
    @State var optionSelectedTabBar = 0
    @State var selectedSegmentedControl = 0
    
    var body: some View {
        VStack {
            if self.optionSelectedTabBar == 0 {
                ScrollView(showsIndicators: false) {
                    SegmentedControlView(selected: self.$selectedSegmentedControl,
                               segments: [Segment(id: 0, segmentName: "Popular"),
                                          Segment(id: 1, segmentName: "New"),
                                          Segment(id: 2, segmentName: "Follow")])
                                              .frame(maxWidth: .infinity, alignment: .leading)
                    switch self.selectedSegmentedControl {
                    case 0:
                        LandScapeList()
                    case 1:
                        PostList()
                    default:
                        NewPostTableView()
                    }
                }
                .background(Color("appereanceColor"))
            } else {
                ProfileView()
            }
            Spacer()
            TabBarView(selected: self.$optionSelectedTabBar)
        }.background(Color("appereanceColor")
            .edgesIgnoringSafeArea(.top))
        
    }
}

#if DEBUG
struct LandScapeContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeContentView()
    }
}
#endif

//
//  ProfileSummary.swift
//  FirstApp
//
//  Created by Agfi on 16/03/24.
//

import SwiftUI

struct ProfileSummary: View {
    @Environment(ModelData.self) var modelData
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10, content: {
                Text(profile.username)
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Text("Notifications: \(profile.prefersNotifications)")
                Text("Seasonal Photos \(profile.seasonalPhoto)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                
                Divider()
                
                VStack(alignment: .leading, content: {
                    Text("Completed Badges")
                        .font(.headline)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            HikeBadge(name: "First Hike")
                            HikeBadge(name: "Earth Day")
                                .hueRotation(Angle(degrees: 90))
                            HikeBadge(name: "Tenth Hike")
                                .grayscale(0.5)
                                .hueRotation(Angle(degrees: 45))
                        }
                        .padding(.bottom)
                    }
                })
                
                Divider()
                
                VStack(alignment: .leading, content: {
                    Text("Recent Hikes")
                        .font(.headline)
                    
                    HikeView(hike: modelData.hikes[0])
                })
            })
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
        .environment(ModelData())
}

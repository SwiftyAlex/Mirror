//
//  SettingsHeaderView.swift
//  SettingsHeaderView
//
//  Created by Alex Logan on 02/09/2021.
//

import SwiftUI

struct SettingsHeaderView: View {
    let name: String
    let avatarName: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 16){
            userAvatar
            text
        }
        .padding(.vertical, 6)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    var userAvatar: some View {
        Image(avatarName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 60, height: 60, alignment: .center)
            .clipShape(Circle())
    }
    
    var text: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(name)
                .lineLimit(nil)
                .font(.body)
            Text("Apple ID, iCloud, Media & Purchases")
                .lineLimit(nil)
                .font(.caption)
        }
    }
}

struct SettingsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List {
                NavigationLink(destination: { Text("") }) {
                    SettingsHeaderView(name: "Alex Logan", avatarName: "memoji")
                }
            }
        }
    }
}

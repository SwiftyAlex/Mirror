//
//  SettingsRow.swift
//  SettingsRow
//
//  Created by Alex Logan on 03/09/2021.
//

import SwiftUI

struct SettingsRow<Content: View>: View {
    let title: String
    let systemImage: String
    let color: Color
    
    let secondaryContent: () -> Content
    
    init(
        title: String,
        systemImage: String,
        color: Color,
        @ViewBuilder secondaryContent: @escaping () -> Content
    ) {
        self.secondaryContent = secondaryContent
        self.title = title
        self.systemImage = systemImage
        self.color = color
    }
    
    
    var body: some View {
        HStack {
            Label(title, systemImage: systemImage)
                .labelStyle(SettingsLabelStyle(backgroundColor: color))
                .layoutPriority(1)
            secondaryContent()
        }
    }
}

struct SettingsRow_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List {
                SettingsRow(
                    title: "Airplane Mode",
                    systemImage: "airplane",
                    color: .orange,
                    secondaryContent: {
                        Toggle(isOn: .constant(true), label: {})
                            .frame(maxWidth: 50)
                    }
                )
            }
        }
    }
}

//
//  SettingsLabelStyle.swift
//  SettingsLabelStyle
//
//  Created by Alex Logan on 02/09/2021.
//

import Foundation
import SwiftUI

struct SettingsLabelStyle: LabelStyle {
    @ScaledMetric var accessibilityScale: CGFloat = 1
    var cornerRadius: CGFloat {
        6 * accessibilityScale
    }
    var iconFrameSize: CGFloat {
        28 * accessibilityScale
    }
    
    let backgroundColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        HStack(spacing: 12) {
            RoundedRectangle(cornerRadius: cornerRadius)
                .frame(width: iconFrameSize, height: iconFrameSize, alignment: .center)
                .foregroundColor(backgroundColor)
                .overlay(
                    configuration.icon
                        .imageScale(.medium)
                        .foregroundColor(.white)
                )
            configuration.title
                .layoutPriority(1)
                .font(.body)
                .foregroundColor(.primary)
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
        }
    }
}

struct SettingsLabelStyle_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List {
                Label("Airplane Mode", systemImage: "airplane")
                    .labelStyle(SettingsLabelStyle(backgroundColor: .orange))
                Label("Wi-Fi", systemImage: "wifi")
                    .labelStyle(SettingsLabelStyle(backgroundColor: .blue))
                Label("Bluetooth", systemImage: "candybarphone")
                    .labelStyle(SettingsLabelStyle(backgroundColor: .blue))
            }
            .navigationTitle(Text("Settings"))
        }
    }
}

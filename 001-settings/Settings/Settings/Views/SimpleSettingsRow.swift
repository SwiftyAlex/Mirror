//
//  SimpleSettingsRow.swift
//  SimpleSettingsRow
//
//  Created by Alex Logan on 03/09/2021.
//

import SwiftUI

struct SimpleSettingsRow: View {
    let title: String
    let systemImage: String
    let color: Color
    let secondaryText: String?
    
    var body: some View {
        HStack {
            Label(title, systemImage: systemImage)
                .labelStyle(SettingsLabelStyle(backgroundColor: color))
            Spacer()
            Text(secondaryText ?? "")
                .font(.body)
                .foregroundColor(.secondary)
        }
    }
}

struct SimpleSettingsRow_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List {
                NavigationLink(destination: { Text("") }) {
                    SimpleSettingsRow(title: "Wi-Fi", systemImage: "wifi", color: .blue, secondaryText: "☕️")
                }
            }
        }
    }
}

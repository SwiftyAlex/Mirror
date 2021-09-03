//
//  SettingsView.swift
//  SettingsView
//
//  Created by Alex Logan on 03/09/2021.
//

import SwiftUI

struct SettingsView: View {
    @State var airplaneModeEnabled: Bool = false
    @State var bluetoothEnabled: Bool = false
    @State var hotspotEnabled: Bool = false
    @State var vpnEnabled: Bool = false
    @State var networkName: String = "☕️"
    
    @State var searchText: String = ""

    var body: some View {
        List {
            Section {
                SettingsHeaderView(name: "Alex Logan", avatarName: "memoji")
            }
            primarySection
            secondarySection
            tertiarySection
        }
        .navigationTitle("Settings")
    }
    
    var primarySection: some View {
        Section {
            SettingsRow(title: "Airplane Mode", systemImage: "airplane", color: .orange, secondaryContent: {
                Toggle(isOn: $airplaneModeEnabled, label: {})
            })
            NavigationLink(destination: { Text("Wi-Fi") }) {
                SimpleSettingsRow(title: "Wi-Fi", systemImage: "wifi", color: .blue, secondaryText: networkName)
            }
            NavigationLink(destination: { Text("Bluetooth") }) {
                SimpleSettingsRow(title: "Bluetooth", systemImage: "iphone", color: .blue, secondaryText: bluetoothEnabled ? "On" : "Off")
            }
            NavigationLink(destination: { Text("Mobile Data") }) {
                SimpleSettingsRow(title: "Mobile Data", systemImage: "antenna.radiowaves.left.and.right", color: .green, secondaryText: nil)
            }
            NavigationLink(destination: { Text("Hotspot") }) {
                SimpleSettingsRow(title: "Personal Hotspot", systemImage: "personalhotspot", color: .green, secondaryText: hotspotEnabled ? "On" : "Off")
            }
            NavigationLink(destination: { Text("VPN") }) {
                SimpleSettingsRow(title: "VPN", systemImage: "network", color: .blue, secondaryText: vpnEnabled ? "Connected" : "Not Connected")
            }
        }
    }
    
    var secondarySection: some View {
        Section {
            NavigationLink(destination: { Text("Notifications") }) {
                SimpleSettingsRow(title: "Notifications", systemImage: "bell.badge.fill", color: .red, secondaryText: nil)
            }
            NavigationLink(destination: { Text("Sounds & Haptics") }) {
                SimpleSettingsRow(title: "Sounds & Haptics", systemImage: "speaker.wave.2.fill", color: .pink, secondaryText: nil)
            }
            NavigationLink(destination: { Text("Focus") }) {
                SimpleSettingsRow(title: "Focus", systemImage: "moon.fill", color: .purple, secondaryText: nil)
            }
            NavigationLink(destination: { Text("Screen Time") }) {
                SimpleSettingsRow(title: "Screen Time", systemImage: "hourglass", color: .purple, secondaryText: nil)
            }
        }
    }
    
    var tertiarySection: some View {
        Section {
            NavigationLink(destination: { Text("General") }) {
                SimpleSettingsRow(title: "General", systemImage: "gear", color: .gray, secondaryText: nil)
            }
            NavigationLink(destination: { Text("Control Centre") }) {
                SimpleSettingsRow(title: "Control Centre", systemImage: "switch.2", color: .gray, secondaryText: nil)
            }
            NavigationLink(destination: { Text("Display & Brightness") }) {
                SimpleSettingsRow(title: "Display & Brightness", systemImage: "textformat.size", color: .blue, secondaryText: nil)
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SettingsView()
        }
    }
}

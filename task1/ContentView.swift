//
//  ContentView.swift
//  task1
//
//  Created by Анна Качкаева on 02.05.2024.
//

import SwiftUI

struct view1: View {
    var body: some View {
        MainView()
    }
}

var scrollView: some View {
    ScrollView {
            ForEach(0..<100) { i in
                Text("row \(i)")
                          .font(.title).frame(maxWidth: .infinity)
            }
        }.safeAreaInset(edge: .bottom) {
            Text("")
                .frame(maxWidth: .infinity, minHeight: 30, maxHeight: 30)
                .background(.cyan.opacity(0.5))
        }
}

var colorView: some View {
    Text("").frame(maxWidth: .infinity, maxHeight: 30).background(.pink.opacity(0.5))
}


struct MainView: View {
    var body: some View {
        TabView {
            scrollView
                .tabItem {
                    Label("scroll me", systemImage: "list.dash")
                }
        }.onAppear {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.stackedLayoutAppearance.normal.iconColor = .gray
            appearance.stackedLayoutAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.gray]
            
            appearance.stackedLayoutAppearance.selected.iconColor = UIColor(Color.black)
            appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(Color.black)]
            
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

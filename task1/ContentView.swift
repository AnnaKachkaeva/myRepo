//
//  ContentView.swift
//  task2
//
//  Created by Анна Качкаева on 02.05.2024.
//

import SwiftUI

struct view1: View {
    var body: some View {
        MainView()
    }
}

var textView: some View {
    let text: Text = Text("Big bold text ")
        .font(.system(size: 30, weight: .bold, design: .default)).foregroundColor(.pink)
        + Text("ugly-small-text")
        .font(.system(size: 12, weight: .bold, design: .monospaced))
        + Text("\nnextLineUexpectablyLongOne")

    return text.multilineTextAlignment(.leading)
}

struct MainView: View {
    @State private var width: Double = 300
    private let insets = EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15)
    
    var body: some View {
        VStack {
            textView.frame(width: width, height: 200).border(.red)
            Slider(value: $width, in: 100...300).accentColor(.pink)
//            Text("width = \(width, specifier: "%.1f")")
        }.padding(insets)
    }
}

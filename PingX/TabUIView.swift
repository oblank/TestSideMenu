//
//  TabView.swift
//  PingX
//
//  Created by oblank on 2021/9/16.
//

import SwiftUI

struct TabUIView: View {
    var body: some View {
        TabView() {
            HomeList()
                .badge(10)
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }
    }
}

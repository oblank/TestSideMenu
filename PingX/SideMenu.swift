//
//  SideMenu.swift
//  PingX
//
//  Created by oblank on 2021/9/16.
//

import SwiftUI

struct SideMenu: View {
    var body: some View {
        NavigationView {
            
            List {
                NavigationLink(destination: DetailView()) {
                    Text("Hello, Home!")
                }
                NavigationLink(destination: DetailView()) {
                    Text("Hello, Home!")
                }
                NavigationLink(destination: DetailView()) {
                    Text("Hello, Home!")
                }
                NavigationLink(destination: DetailView()) {
                    Text("Hello, Home!")
                }
            }
            .listStyle(.insetGrouped)
        }
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenu()
    }
}

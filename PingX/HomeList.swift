//
//  HomeList.swift
//  PingX
//
//  Created by oblank on 2021/9/16.
//

import SwiftUI
import SideMenu

struct HomeList: View {
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
            .navigationBarItems(leading: Button("SideMenu") {
                // Define the menu
                let menuViewController = UIHostingController(rootView: SideMenu())
                let menu = SideMenuNavigationController(rootViewController: menuViewController)
                
                let keyWindow = UIApplication.shared.connectedScenes
                        .filter({$0.activationState == .foregroundActive})
                        .compactMap({$0 as? UIWindowScene})
                        .first?.windows
                        .filter({$0.isKeyWindow}).first
                
                keyWindow?.rootViewController?.present(menu, animated: true, completion: nil)
            })
        }
    }
}

struct HomeList_Previews: PreviewProvider {
    static var previews: some View {
        HomeList()
    }
}

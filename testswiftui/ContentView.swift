//
//  ContentView.swift
//  testswiftui
//
//  Created by Mahesh Yakami on 1/17/20.
//  Copyright © 2020 Mahesh Yakami. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Image("fox").resizable().clipShape(Circle()).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width - 50, alignment: .leading).overlay(Circle().stroke(Color.gray, lineWidth: 2))
                SwiftUIView()
                // Navigation
                NavigationLink(destination: AnimalProfile()) {
                    Text("Animal Profile")
                }
                
                NavigationLink(destination: AddSomething()) {
                    Text("Add Something")
                }
                
                NavigationLink(destination: PeopleList()) {
                    Text("People From JSON")
                }
                
                
            }
            .navigationBarTitle("SwiftUI List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

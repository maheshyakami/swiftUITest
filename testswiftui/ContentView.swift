//
//  ContentView.swift
//  testswiftui
//
//  Created by Mahesh Yakami on 1/17/20.
//  Copyright © 2020 Mahesh Yakami. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var toggleState = false
    var body: some View {
        NavigationView {
            List {
                
                Image("fox").resizable().clipShape(Circle()).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width - 50, alignment: .leading).overlay(Circle().stroke(Color.gray, lineWidth: 2))
                
                Toggle(isOn: $toggleState) {
                    Text("Show animals")
                }
                if self.toggleState {
                    SwiftUIView()
                }
                
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
                RadialGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: /*@START_MENU_TOKEN@*/500/*@END_MENU_TOKEN@*/)
                
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

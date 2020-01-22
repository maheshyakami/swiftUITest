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
                Spacer().frame(height: 20)
                BusinessProfile()
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

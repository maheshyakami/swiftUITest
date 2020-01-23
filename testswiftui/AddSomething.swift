//
//  AddSomething.swift
//  testswiftui
//
//  Created by Mahesh Yakami on 1/23/20.
//  Copyright © 2020 Mahesh Yakami. All rights reserved.
//

import SwiftUI

struct AddSomething: View {
    var body: some View {
        VStack{
            Text("Business Name:")
                .multilineTextAlignment(.leading)
            Spacer().frame(height: 5)
            Button(action: {
                debugPrint("pressed")
            }) {
                Text("tis a button")
                    .multilineTextAlignment(.center)
            }
            Spacer().frame(height: 5)
//            TextField()
            Spacer()
        }
    }
}

struct AddSomething_Previews: PreviewProvider {
    static var previews: some View {
        AddSomething()
    }
}

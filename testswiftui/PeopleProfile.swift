//
//  PeopleProfile.swift
//  testswiftui
//
//  Created by Mahesh Yakami on 2/18/20.
//  Copyright © 2020 Mahesh Yakami. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct PeopleProfile: View {
    var person: Person
    
    var body: some View {
        ScrollView {
            VStack(alignment: HorizontalAlignment.leading, spacing: 10) {
                HStack(spacing: 10) {
                    Spacer().frame(width: 10)
                    KFImage(URL(string: person.imageName))
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width - 40, height: UIScreen.main.bounds.height * 0.7)
                        .scaledToFit()
                        .clipShape(Capsule())
                        .overlay(Capsule().stroke(Color.gray, lineWidth: 5))
                        .offset(x: 0, y: 5)
                    Spacer().frame(width: 10)
                }
                Spacer()
                HStack(spacing: 5) {
                    Spacer().frame(width: 5)
                    Text("A user profile is a visual display of personal data associated with a specific user, or a customized desktop environment. A profile refers therefore to the explicit digital representation of a person's identity. A user profile can also be considered as the computer representation of a user model.").font(Font.system(size: 15))
                    Spacer().frame(width: 5)
                }
                Spacer()
                HStack(spacing: 5) {
                    Spacer().frame(width: 5)
                    Text("Email: abc@defgh.com").onTapGesture {
                        debugPrint("sajdajskdh")
                    }
                    Spacer().frame(width: 5)
                }
                Spacer()
                HStack(spacing: 5) {
                    Spacer().frame(width: 5)
                    Text("Address: Subway 15")
                    Spacer().frame(width: 5)
                }
                Spacer()
                HStack(spacing: 5) {
                    Spacer().frame(width: 5)
                    Text("Contact: 98012345678").onTapGesture {
                        debugPrint("calling")
                    }
                    Spacer().frame(width: 5)
                }
                Spacer()
                
            }
        }
        .navigationBarTitle("\(person.firstName) \(person.lastName)", displayMode: .inline)
        
    }
}

struct PeopleProfile_Previews: PreviewProvider {
    static var previews: some View {
        //        PeopleProfile(person: Person)
        Text("")
    }
}

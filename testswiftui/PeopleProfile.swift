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
        VStack() {
            KFImage(URL(string: person.imageName))
                .resizable()
                .aspectRatio(contentMode: .fill)
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

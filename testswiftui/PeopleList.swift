//
//  PeopleList.swift
//  testswiftui
//
//  Created by Mahesh Yakami on 2/17/20.
//  Copyright © 2020 Mahesh Yakami. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct PeopleList: View {
    
    var body: some View {
        
            List(PersonData.people) { person in
                NavigationLink(destination: PeopleProfile(person: person)) {
                    VStack(alignment: .leading) {
                        HStack {
                            KFImage(URL(string: person.imageName))
                                .resizable()
                                .clipShape(Circle())
                                .scaledToFill()
                                .shadow(color: .primary, radius: 5)
                                .padding([.horizontal, .top], 7)
                                .frame(width: 110, height: 110)
                            
                            
                            VStack(alignment: .leading){
                                Text(person.firstName).lineLimit(1)
                                Text(person.lastName).lineLimit(1)
                            }
                        }
                    }
                    
                }
            }
        
    .navigationBarTitle("People From JSON")
    }
}




struct PeopleListTest_Previews: PreviewProvider {
    static var previews: some View {
        PeopleList()
    }
}



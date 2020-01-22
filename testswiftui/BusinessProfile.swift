//
//  BusinessProfile.swift
//  testswiftui
//
//  Created by Mahesh Yakami on 1/22/20.
//  Copyright © 2020 Mahesh Yakami. All rights reserved.
//

import SwiftUI

struct BusinessProfile: View {
    var body: some View {
        VStack(alignment: .leading){
            ZStack(alignment: .bottomLeading){
                Image("waitingDog").resizable().overlay(Circle().stroke(Color.green, lineWidth: 4)).frame(width: UIScreen.main.bounds.width - 50, height: 400).clipShape(Circle())
                Text("King of the House").foregroundColor(.gray).offset(y: -20).font(.caption)
                
            }
            Spacer().frame(height: 5)
            Text("Cool Animal").offset(x: 230).font(.callout)
            Text("Description:").font(.headline)
            Text("Not Doge")
            Spacer().frame(height: 5)
        }
        
    }
}

struct BusinessProfile_Previews: PreviewProvider {
    static var previews: some View {
        BusinessProfile()
    }
}

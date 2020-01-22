//
//  SwiftUIView.swift
//  testswiftui
//
//  Created by Mahesh Yakami on 1/22/20.
//  Copyright © 2020 Mahesh Yakami. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Image("fox").resizable().frame(width: 75, height: 75).clipShape(Circle()).overlay(Circle().stroke(Color.gray, lineWidth: 2))
                
                VStack(alignment: .leading){
                    Text("This is a Fox.")
                }
            }
            
            HStack{
                Image("surprisedCat").resizable().frame(width: 75, height: 75).clipShape(Circle())
                VStack(alignment: .leading){
                    Text("This cat is confused")
                }
            }
            
            HStack{
                Image("monkey").resizable().frame(width: 75, height: 75).clipShape(Circle()).overlay(Circle().stroke(Color.gray, lineWidth: 2))
                
                VStack(alignment: .leading){
                    Text("This is You.")
                }
            }
        
            HStack{
                Image("footballChimp").resizable().frame(width: 75, height: 75).clipShape(Circle()).overlay(Circle().stroke(Color.gray, lineWidth: 2))
                
                VStack(alignment: .leading){
                    Text("This you again holding a football.")
                }
            }
            
            HStack{
                Image("confusedCat").resizable().frame(width: 75, height: 75).clipShape(Circle()).overlay(Circle().stroke(Color.gray, lineWidth: 2))
                
                VStack(alignment: .leading){
                    Text("This cat is surprised.")
                }
            }
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

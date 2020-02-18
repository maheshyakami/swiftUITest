//
//  AddSomething.swift
//  testswiftui
//
//  Created by Mahesh Yakami on 1/23/20.
//  Copyright © 2020 Mahesh Yakami. All rights reserved.
//
import SwiftUI

struct AddSomething: View {
    
    @State var name = ""
    @State var emailAddress = ""
    let categories = ["IT", "Food", "Health Sector", "Education Institution"]
    @State var categoryType = ""
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            Text("Business Name:")
                            .offset(x: 15, y: 0)
            
            Spacer()
                .frame(width: 0, height: 5, alignment: .center)
            
            TextField("eg. EB Pearls Pvt. Ltd.", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .autocapitalization(/*@START_MENU_TOKEN@*/.words/*@END_MENU_TOKEN@*/)
            
            Spacer().frame(width: 0, height: 5, alignment: .center)
            
            Text("Business Email:").offset(x: 15)
            
            Spacer()
                .frame(width: 0, height: 5, alignment: .center)
            
            TextField("eg. ebpearls@ebpearls.com", text: $emailAddress)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .keyboardType(UIKeyboardType.emailAddress)
            
//            Spacer()
            //                .frame(width: 0, height: 5, alignment: .center)
            //
            //            Text("Business Category")
            //                .offset(x: 15, y: 0)
            //
            //            Spacer()
            //                .frame(width: 0, height: 5, alignment: .center)
            //
            //            Picker( "Business Category",selection: $categoryType) {
            //                ForEach (0 ..< self.categories.count) {
            //                    Text(self.categories[$0])
            //                    categoryType = self.categories[$0]
            //                    debugPrint(categoryType)
            //                }
            //                .padding()
            //                .labelsHidden()
            //            }
            //
            Spacer()
                .frame(width: 0, height: 5, alignment: .center)
            
            Button(action: {
                self.printFunction()
            }) {
                Text("A button")
            }
            
            
            Spacer()
        }.navigationBarTitle("Add Business")
    }
}

struct AddSomething_Previews: PreviewProvider {
    static var previews: some View {
        AddSomething()
    }
}

extension AddSomething {
    func printFunction() {
        debugPrint("sadasdasd")
    }
}

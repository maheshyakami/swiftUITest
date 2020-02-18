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
    @State var contactNumber = ""
    @State var address = ""
    @State var description = ""
    let categories = ["IT", "Food", "Health Sector", "Education Institution"]
    @State var categoryIndex = 0
    
    var body: some View {
        Form {
            Section(header: Text("Business Name:")) {
                // Mark: - Business Name
//                Text("Business Name:")
                TextField("eg. EB Pearls Pvt. Ltd.", text: $name).textFieldStyle(RoundedBorderTextFieldStyle()).padding().autocapitalization(.words)
            }
            Section(header: Text("Business Email:")){
                // Mark: - Business Email
//                Text("Business Email:")
                TextField("eg. ebpearls@ebpearls.com", text: $emailAddress).textFieldStyle(RoundedBorderTextFieldStyle()).padding().keyboardType(UIKeyboardType.emailAddress)
                }
            Section(header: Text("Business Category:")){
                // Mark: - Business Category
                Picker( "",selection: $categoryIndex) {
                    ForEach(0 ..< self.categories.count) {
                        Text(self.categories[$0]).tag($0)
                    }
                    .labelsHidden()
                }
            }
            Section(header: Text("Business Contact Number:")){
                // Mark: - Business Contact
//                Text("Business Contact Number:")
                TextField("98XXXXXXXX", text: $contactNumber).textFieldStyle(RoundedBorderTextFieldStyle()).padding().keyboardType(UIKeyboardType.phonePad)
            }
            Section(header: Text("Business Address")){
                //Mark: - Business Address
//                Text("Business Address:")
                TextField("Kupondole", text: $address).textFieldStyle(RoundedBorderTextFieldStyle()).padding().autocapitalization(.words)
                
                // Mark: - Business Description
                }
            Section(header: Text("Business Description")){
//                Text("Business Description:")
                TextField("Description", text: $description).textFieldStyle(RoundedBorderTextFieldStyle()).padding().autocapitalization(.sentences)
            }
            
        }
        .navigationBarTitle("Add Your Business", displayMode: .inline)
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

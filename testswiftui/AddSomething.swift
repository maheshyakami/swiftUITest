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
    @State var date = Date()
    let categories = ["IT", "Food", "Health Sector", "Education Institution"]
    @State var categoryIndex = 0
    
    var body: some View {
        Form {
            // Mark: - Business Name
            Section(header: Text("Business Name:")) {
                TextField("eg. EB Pearls Pvt. Ltd.", text: $name).textFieldStyle(RoundedBorderTextFieldStyle()).padding().autocapitalization(.words)
            }
            
            // Mark: - Business Email
            Section(header: Text("Business Email:")){
                TextField("eg. ebpearls@ebpearls.com", text: $emailAddress).textFieldStyle(RoundedBorderTextFieldStyle()).padding().keyboardType(UIKeyboardType.emailAddress)
            }
            // Mark: - Business Category
            Section(header: Text("Business Category:")){
                Picker( "",selection: $categoryIndex) {
                    ForEach(0 ..< self.categories.count) {
                        Text(self.categories[$0]).tag($0)
                    }
                    .labelsHidden()
                }.pickerStyle(SegmentedPickerStyle())
            }
            
            // Mark: - Business Contact
            Section(header: Text("Business Contact Number:")){
                TextField("98XXXXXXXX", text: $contactNumber).textFieldStyle(RoundedBorderTextFieldStyle()).padding().keyboardType(UIKeyboardType.phonePad)
            }
            
            //Mark: - Business Address
            Section(header: Text("Business Address")){
                TextField("Kupondole", text: $address).textFieldStyle(RoundedBorderTextFieldStyle()).padding().autocapitalization(.words)
            }
            
            // Mark: - Business Description
            Section(header: Text("Business Description")){
                TextField("Description", text: $description).textFieldStyle(RoundedBorderTextFieldStyle()).padding().autocapitalization(.sentences)
            }
            
            // Mark: - Some Date
            Section(header: Text("Some Date")){
                DatePicker("Select a date", selection: $date, displayedComponents: .date)
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

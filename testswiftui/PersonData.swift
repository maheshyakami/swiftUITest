//
//  GridData.swift
//  testswiftui
//
//  Created by Mahesh Yakami on 2/17/20.
//  Copyright © 2020 Mahesh Yakami. All rights reserved.
//

import Foundation

struct Person : Codable, Identifiable {
    var id: Int
    var firstName: String
    var lastName: String
    var imageName: String
}

struct PersonData {
    static var people: [Person] = load("people.json")
    
    static func load<T: Decodable>(_ file: String) -> T {
        guard let url = Bundle.main.url(forResource: file, withExtension: nil),
            let data = try? Data(contentsOf: url),
        let typedData = try? JSONDecoder().decode(T.self, from: data) else {
            fatalError("Error while loading data from file: \(file)")
        }
        
        return typedData;
    }
}

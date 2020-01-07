//
//  Model.swift
//  Yulu
//
//  Created by Amit Kumar on 07/01/20.
//  Copyright © 2020 Amit. All rights reserved.
//

import Foundation

// MARK: - DataList
struct DataList: Codable {
    let contacts: [Contact]

    enum CodingKeys: String, CodingKey {
        case contacts = "Contacts"
    }
}

// MARK: - Contact
struct Contact: Codable {
    let name, lastname: String
    let id: Int
}

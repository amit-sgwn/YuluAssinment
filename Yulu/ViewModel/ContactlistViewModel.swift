//
//  ContactlistViewModel.swift
//  Yulu
//
//  Created by Amit Kumar on 07/01/20.
//  Copyright © 2020 Amit. All rights reserved.
//

import Foundation

class ContactLsitViewModel {
    
    var data: DataList?
    
    func getData() {
        self.data =  Parser.shared.getjsonData()
    }
    
    init() {
        self.getData()
    }
    
    func getContactData(at index: Int) -> Contact? {
        return self.data?.contacts[index]
    }
    
}

extension ContactLsitViewModel {
    var noOfContact: Int {
        return self.data?.contacts.count ?? 0
    }
    
    var firstListRows: Int {
        if noOfContact > 20 {
            return 20
        } else {
            return noOfContact
        }
    }
    
    var secondListRow: Int {
        if noOfContact > 20 {
            return noOfContact - 20
        } else {
            return 0
        }
    }
    
}

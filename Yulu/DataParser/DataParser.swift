//
//  DataParser.swift
//  Yulu
//
//  Created by Amit Kumar on 07/01/20.
//  Copyright © 2020 Amit. All rights reserved.
//

import Foundation

class Parser {
    
    public static let shared = Parser()
    
    private init(){
        
    }
    
    func getjsonData() -> DataList? {
        return self.loadJson(filename: "data")
//        if let path = Bundle.main.path(forResource: "data", ofType: "json") {
//            do {
//                  let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
//                  let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
//                  if let jsonResult = jsonResult as? DataList {
//                            // do stuff
//                    return jsonResult
//                  }
//              } catch {
//                   // handle error
//                return nil
//              }
//        }
//        return nil
    }
    
    
    
        func loadJson(filename fileName: String) -> DataList? {
            if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
                do {
                    let data = try Data(contentsOf: url)
                    let decoder = JSONDecoder()
                    let jsonData = try decoder.decode(DataList.self, from: data)
                    return jsonData
                } catch {
                    print("error:\(error)")
                }
            }
            return nil
        
    }
    
}

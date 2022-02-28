//
//  PlayerData.swift
//  touchDown
//
//  Created by Suraj Kotte on 11/04/21.
//

import Foundation

extension Bundle {
    func decode<T : Codable>(_ file : String) -> T{
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("erroe")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("error")
        }
        let decoder = JSONDecoder()
        
        guard let decodeData = try? decoder.decode(T.self, from: data) else {
            fatalError("print error")
        }
        return decodeData
        
    }
}

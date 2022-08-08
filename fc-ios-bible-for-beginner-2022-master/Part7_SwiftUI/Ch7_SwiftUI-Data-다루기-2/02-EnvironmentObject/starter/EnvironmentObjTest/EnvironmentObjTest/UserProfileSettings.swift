//
//  UserProfileSettings.swift
//  EnvironmentObjTest
//
//  Created by TAEJANIM on 2022/08/08.
//

import Foundation

final class UserProfileSettings: ObservableObject {
    
    @Published var name: String = ""
    @Published var age: Int = 0
    
    func haveBirthDayParty() {
        age += 1
    }
}

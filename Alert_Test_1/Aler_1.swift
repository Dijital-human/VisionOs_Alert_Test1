//
//  Aler_1.swift
//  Alert_Test_1
//
//  Created by Famil Mustafayev on 05.08.24.
//

import Foundation

struct Alert_1: Identifiable{
    var id = UUID()
    var title: String
    var messaj: String
    var users: User? = nil
}

//
//  CardModel.swift
//  Lesson 7
//
//  Created by Marcello Lima on 24/09/21.
//

import Foundation

class CardModel: Identifiable, ObservableObject {
    var id:UUID = UUID()
    @Published var cardNumber: [Int] = [Int]()
    
    init() {
        for i in Range(1...50) {
        cardNumber.append(i)
        }
    }
}

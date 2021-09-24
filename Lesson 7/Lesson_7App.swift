//
//  Lesson_7App.swift
//  Lesson 7
//
//  Created by Marcello Lima on 24/09/21.
//

import SwiftUI

@main
struct Lesson_7App: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(CardModel())
        }
    }
}

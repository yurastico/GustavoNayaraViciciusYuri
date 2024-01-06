//
//  MuambasUSAApp.swift
//  MuambasUSA
//
//  Created by Yuri Cunha on 15/12/23.
//

import SwiftUI
import SwiftData
@main
struct MuambasUSAApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
                
        }
        .modelContainer(for: ShoppingItem.self)
    }
}

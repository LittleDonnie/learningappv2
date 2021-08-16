//
//  LearningApp_v2App.swift
//  LearningApp v2
//
//  Created by Monty Montgomery on 8/15/21.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        
        WindowGroup {
            HomeView()
            .environmentObject(ContentModel())
        }
    }
}

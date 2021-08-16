//
//  ContentView.swift
//  LearningApp v2
//
//  Created by Monty Montgomery on 8/15/21.
//

import SwiftUI

struct HomeView: View {
    
    
    @EnvironmentObject var model: ContentModel
    
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

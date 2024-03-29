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
        
        NavigationView{
            VStack(alignment: .leading){
                Text("What do you want to do today?")
                    .padding(.leading, 20)
                ScrollView{
                    
                    LazyVStack{
                        
                        ForEach(model.modules){module in
                            
                            //learning card
                            
                            VStack(spacing:20){
                            HomeViewRow(image: module.content.image, title: " Learn \(module.category)", description: module.content.description, count: " \(module.content.lessons.count)", time: module.content.time)
                            
                            // test card
                            
                            HomeViewRow(image: module.test.image, title: "\(module.category) Test", description: module.test.description, count: " \(module.test.questions.count)", time: module.test.time)
                            }
                            
                        }
                        
                    }
                    .padding()
                }
                .navigationTitle("Get Started")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
        
        
    }
}

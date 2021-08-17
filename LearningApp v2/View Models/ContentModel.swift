//
//  ContentModel.swift
//  LearningApp v2
//
//  Created by Monty Montgomery on 8/15/21.
//

import Foundation
class ContentModel: ObservableObject {
 
    @Published var modules =  [Module]()
    var styleData: Data?
    
    init() {
        
        getLocalData()
            
    }
    
    func getLocalData(){
        
        // get a url to json file
        let jasonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do{
            // read files into a data object
            let jsonData = try Data(contentsOf: jasonUrl!)
            let jsonDecoder = JSONDecoder()
            let modules =  try jsonDecoder.decode([Module].self, from:jsonData)
            
            // assirn parced modules to modules property
            self.modules = modules
        }
    
        catch{
            print("Couldn't parce local data")
        }
        
        //Parce style data
        
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do{
            // read styles into a data object
            let styleData = try Data(contentsOf: styleUrl!)
            //
            self.styleData = styleData
        }
        catch {
            print("COuldn't read style stuff")
        }
        
        
        
        
        
        
    }
}

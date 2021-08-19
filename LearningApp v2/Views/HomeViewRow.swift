//
//  HomeViewRow.swift
//  HomeViewRow
//
//  Created by Monty Montgomery on 8/19/21.
//

import SwiftUI




struct HomeViewRow: View {
    
    var image: String
    var title: String
    var description: String
    var count: String
    var time: String
    
    var body: some View {
        
        
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width : 335, height: 175), contentMode: .fit)
            
            HStack{
                //Image
                Image(image)
                    .resizable()
                    .frame(width: 116, height: 116)
                    .clipShape(Circle())
                Spacer()
                //Text
                VStack (alignment: .leading, spacing: 10){
                    //headline
                    Text(title)
                    
                    //description
                    Text(description)
                        .padding(.bottom, 20)
                        .font(.caption)
                    
                    //items
                    
                    HStack
                    {
                        // numbner of lessons/questions
                        Image(systemName: "text.book.closed")
                            .resizable()
                            .frame(width: 15, height: 15)
                     //   Text("10 lessons")
                        Text(count)
                            .font(.caption)
                       
                        //time
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text(time)
                            .font(.caption)
                       
                    }
                    
                    
                }
             //   padding(.leading, 20)
                
            }
            .padding(.horizontal, 20)
        }
        
    }
}




struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow(image: "swift", title: "Learn Swuit", description: "Lotta words", count: "12 Lessons", time: "10.5 Hours")
    }
}

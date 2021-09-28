//
//  ContentView.swift
//  LearningSwift
//
//  Created by Aleksandar Stojanovic on 9/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        VStack(spacing: 30.0) {
            Spacer()
                        
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            HStack() {
                Spacer()
                Text("Vucje")
                Text("Hidrocentrala")
                Spacer()
            }
            
            Spacer()
                
            
        }
        
        
    }
}


// MARK: part 2

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

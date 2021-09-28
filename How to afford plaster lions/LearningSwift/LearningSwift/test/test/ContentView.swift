//
//  ContentView.swift
//  test
//
//  Created by Aleksandar Stojanovic on 9/13/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        return Text("Hello, world!").padding()
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPad Air (4th generation)")
                .preferredColorScheme(.dark)
            ContentView()
                .previewDevice("iPad Air (4th generation)")
                .preferredColorScheme(.dark)
        }
    }
}

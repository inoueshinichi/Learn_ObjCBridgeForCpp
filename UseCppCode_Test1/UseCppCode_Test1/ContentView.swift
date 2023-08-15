//
//  ContentView.swift
//  UseCppCode_Test1
//
//  Created by Inoue Shinichi on 2023/08/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
            }
            .padding()
        } // NavigationView
        .onAppear {
            // View表示のタイミング
            var objCpp = WrapObjCpp()
            objCpp.run()
            
        }
        .onDisappear {
            // View消去のタイミング
            
        }
    } // View
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

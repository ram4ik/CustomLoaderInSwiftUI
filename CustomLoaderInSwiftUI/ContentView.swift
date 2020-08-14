//
//  ContentView.swift
//  CustomLoaderInSwiftUI
//
//  Created by ramil on 14.08.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var showLoader = false
    
    var body: some View {
        ZStack {
            Button(action: {
                showLoader.toggle()
            }, label: {
                Text("Show Loader?")
            })
            
            if showLoader {
                LoaderView()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(showLoader ? Color.black.opacity(0.2) : .white)
        .edgesIgnoringSafeArea(.all)
        .onTapGesture() {
            showLoader.toggle()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

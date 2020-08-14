//
//  LoaderView.swift
//  CustomLoaderInSwiftUI
//
//  Created by ramil on 14.08.2020.
//

import SwiftUI

struct LoaderView: View {
    @State private var animate = false
    
    var body: some View {
        VStack {
            Circle()
                .trim(from: 0, to: 0.7)
                .stroke(AngularGradient(gradient: .init(colors: [.green, .blue]), center: .center), style: StrokeStyle(lineWidth: 5, lineCap: .round))
                .frame(width: 60, height: 60, alignment: .center)
                .rotationEffect(.init(degrees: animate ? 360 : 0), anchor: .center)
                .animation(Animation.linear(duration: 0.7).repeatForever(autoreverses: false))
            
            Text("Loading...")
                .fontWeight(.bold)
                .padding(.top, 10)
        
        }
        .padding(.all, 20)
        .background(Color.white)
        .cornerRadius(15)
        .onAppear() {
            animate.toggle()
        }
    }
}

struct LoaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoaderView()
    }
}


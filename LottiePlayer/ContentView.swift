//
//  ContentView.swift
//  LottiePlayer
//
//  Created by Mark Salpeter on 4/15/20.
//  Copyright © 2020 Mark Salpeter. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.black)
            
            // This is a simple loading animation I made and exported with flow.
            // It isn't working on the ios version.
            LottieView(filename: "FlowAnimation")
            
            // This is the lottie logo animation. It is working.
            LottieView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

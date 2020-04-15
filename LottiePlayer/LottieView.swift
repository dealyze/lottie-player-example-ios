//
//  LottieView.swift
//  Lottie Tester
//
//  Created by Mark Salpeter on 4/14/20.
//  Copyright © 2020 Mark Salpeter. All rights reserved.
//

import SwiftUI
import UIKit
import Lottie

struct LottieView: UIViewRepresentable {
    private var filename = "LottieLogo2"
    
    init() {}

    init(filename: String) {
        self.filename = filename
    }

    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let animationView = AnimationView()
        animationView.animation = Animation.named(filename)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.play();
        
        let view = UIView()
        view.addSubview(animationView)
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {}
}

struct LottieView_Previews: PreviewProvider {
    static var previews: some View {
        LottieView()
    }
}

//
//  MainController.swift
//  fb_clone
//
//  Created by Decagon on 08/10/2021.
//

import UIKit

class MainController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}

import SwiftUI

struct MainPreview: PreviewProvider {
    static var previews: some View {
//        Text("Main Preview")
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> some UIViewController {
            return MainController()
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}

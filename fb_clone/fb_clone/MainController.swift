//
//  MainController.swift
//  fb_clone
//
//  Created by Decagon on 08/10/2021.
//

import UIKit
import LBTATools

class PostCell: LBTAListCell<String> {
    
    let imageView = UIImageView(backgroundColor: .purple)
    let nameLabel = UILabel(text: "Name Label")
    let dateLabel = UILabel(text: "Sunday at 12.09PM")
    let postTextLabel = UILabel(text: "This is the post text")
    let photosGridController = PhotosGridController()
    
    override func setupViews() {
        backgroundColor = .white
        
        stack(hstack(imageView.withHeight(40).withWidth(40),
                     stack(nameLabel, dateLabel),
                     spacing: 10).padLeft(12).padRight(12).padTop(12) ,
              postTextLabel,
              photosGridController.view, spacing: 10)
    }
}

class StoryHeader: UICollectionReusableView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemOrange
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}

class MainController: LBTAListHeaderController<PostCell, String, StoryHeader>, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: 0, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 12, left: 0, bottom: 0, right: 0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .init(white: 0.9, alpha: 1)
        
        self.items = ["hi", "friend", "", ""]
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 420)
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

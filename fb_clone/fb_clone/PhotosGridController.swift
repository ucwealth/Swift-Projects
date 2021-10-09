//
//  PhotosGridController.swift
//  fb_clone
//
//  Created by Decagon on 09/10/2021.
//

import UIKit
import SwiftUI
import LBTATools

class PhotoGridCell: LBTAListCell<String> {
    override func setupViews() {
        backgroundColor = .yellow
    }
}

class PhotosGridController: LBTAListController<PhotoGridCell, String>, UICollectionViewDelegateFlowLayout {
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .lightGray
        
        self.items = ["", "", ""]
    }
    
    let cellSpacing: CGFloat = 4
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (view.frame.width - 4 * cellSpacing) / 3
        return .init(width: width, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 0, left: cellSpacing, bottom: 0, right: cellSpacing)
    }
}

struct PhotosGridPreview: PreviewProvider {
    
    static var previews: some View {
        ContainerView()
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> some UIViewController {
            return PhotosGridController()
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}

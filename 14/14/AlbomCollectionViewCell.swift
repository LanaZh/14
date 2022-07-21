//
//  AlbomCollectionViewCell.swift
//  14
//
//

import UIKit

 class AlbomCollectionViewCell: UICollectionViewCell {

     static let refisterCell = "AlbomCollectionViewCell"

     let albomImageView: UIImageView = {
         let imageView = UIImageView()
         imageView.backgroundColor = .green
         imageView.translatesAutoresizingMaskIntoConstraints = false
         return imageView
     }()
     let nubmerPhoto: UILabel = {
         let label = UILabel()
         label.font = UIFont.systemFont(ofSize: 13)
         label.textColor = .black
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
     }()
   
     override init(frame: CGRect) {
         super.init(frame: frame)
         addSubview(albomImageView)
         addSubview(nubmerPhoto)

         //расположение ячеек
         albomImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
         albomImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
         albomImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
         albomImageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
         nubmerPhoto.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 13).isActive = true
         nubmerPhoto.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 13).isActive = true
         nubmerPhoto.topAnchor.constraint(equalTo: topAnchor, constant: 134).isActive = true
     }
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
 }

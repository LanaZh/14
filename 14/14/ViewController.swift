//
//  ViewController.swift
//  14
//
//

import UIKit

 struct InfoAlbom {
     var image: UIImage
     var name: String
     var photo: Int


  static func moveAlbom() -> [InfoAlbom] {
     let first = InfoAlbom(image: UIImage(named: "albom1")!,
                         name: "Недавние", photo: 4553)
     let second = InfoAlbom(image: UIImage(named: "albom2")!,
                         name: "Избранное", photo: 46)
     let third = InfoAlbom(image: UIImage(named: "albom3")!,
                         name: "Instagram", photo: 26)
     let fouth = InfoAlbom(image: UIImage(named: "albom4")!,
                         name: "Лето", photo: 256)
     let five = InfoAlbom(image: UIImage(named: "albom5")!,
                           name: "Каникулы", photo: 126)
     let six = InfoAlbom(image: UIImage(named: "albom6")!,
                          name: "WhatsApp", photo: 256)
      
     return [first, second, third, fouth, five, six]
     }
 }

 class ViewController: UIViewController {

     @IBOutlet weak var labelMyAlbom: UILabel!

     private var albomCollectionView = AlbomCollectionView()
     
     override func viewDidLoad() {
         super.viewDidLoad()

         self.title = "Альбомы"

         view.addSubview(albomCollectionView)
         albomCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
         albomCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
         albomCollectionView.topAnchor.constraint(equalTo: labelMyAlbom.bottomAnchor, constant: 10).isActive = true
         albomCollectionView.heightAnchor.constraint(equalToConstant: 300).isActive = true
         albomCollectionView.set(cells: InfoAlbom.moveAlbom())
     }
}

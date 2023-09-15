//
//  SixthViewController.swift
//  Delegate
//
//  Created by Fakunabs on 14/04/2023.
//

import UIKit

class SixthViewController: UIViewController {
    
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    
    struct LandScape {
        let imageLandScapeName: String
        var labelLandScapeLabel: String
    }
    
    var collection: [LandScape] = [
        LandScape(imageLandScapeName:"totoro", labelLandScapeLabel: "Totoro"),
        LandScape(imageLandScapeName:"sakura", labelLandScapeLabel: "Sakura"),
        LandScape(imageLandScapeName:"sky", labelLandScapeLabel: "Sky"),
        LandScape(imageLandScapeName:"lake", labelLandScapeLabel: "Lake"),
        LandScape(imageLandScapeName:"cloud", labelLandScapeLabel: "Cloud"),
        LandScape(imageLandScapeName:"mountain", labelLandScapeLabel: "Moutain"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sixth View Controller"
        myCollectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "collectionCell")
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
    }
    
}

// MARK: - Collection view
extension SixthViewController: UICollectionViewDataSource, UICollectionViewDelegate,
                               UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CollectionViewCell
        cell.myLandScapeImage.image = UIImage(named: collection[indexPath.row].imageLandScapeName)
        cell.myLandScapeLabel.text = collection[indexPath.row].labelLandScapeLabel
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return  CGSize(width: UIScreen.main.bounds.width / 2 - 15, height : 200)
    }
    
}

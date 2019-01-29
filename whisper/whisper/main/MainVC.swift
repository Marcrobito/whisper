//
//  MainVC.swift
//  whisper
//
//  Created by Marco Antonio Martínez Gutiérrez on 23/01/19.
//  Copyright © 2019 Marco Antonio Martínez Gutiérrez. All rights reserved.
//

import UIKit

class MainVC: UIViewController{
    
    var presenter: MainViewToPresenterProtocol?
    
    var whispers:[Whisper] = []
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    
    override func viewDidLoad() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
        self.collectionView.register(UINib(nibName: "WhisperCell", bundle: nil), forCellWithReuseIdentifier: "WhisperCell")
        
        presenter?.view = self
        presenter?.requestPopular()
        
    }
    
   
    
    
    
    
}

extension MainVC: MainPresenterToViewProtocol{
    func updateView(whispers: [Whisper]) {
        self.whispers = whispers
        collectionView.reloadData()
       
    }
    
}

extension MainVC: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.whispers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WhisperCell", for: indexPath) as! WhisperCell
        cell.setImage(whispers[indexPath.row].url)
        
        return cell
        
    }
    
    
}

extension MainVC: UICollectionViewDelegateFlowLayout{
    
}

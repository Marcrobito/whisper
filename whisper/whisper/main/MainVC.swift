//
//  MainVC.swift
//  whisper
//
//  Created by Marco Antonio Martínez Gutiérrez on 23/01/19.
//  Copyright © 2019 Marco Antonio Martínez Gutiérrez. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var presenter: MainViewToPresenterProtocol?
    
    var whispers:[Whisper] = []
    
    
    
    @IBOutlet weak var mainTable: UITableView!
    
    
    override func viewDidLoad() {
        mainTable.dataSource = self
        mainTable.delegate = self
        presenter?.view = self
        presenter?.requestPopular()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return whispers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WhisperCell", for: indexPath) as! WhisperCell
        cell.whisperImage.downloadedFrom(link: whispers[indexPath.row].url)
        return cell
    }
    
    
    
    
}

extension MainVC: MainPresenterToViewProtocol{
    func updateView(whispers: [Whisper]) {
        self.whispers = whispers
        mainTable.reloadData()
    }
    
}

class WhisperCell: UITableViewCell{
    @IBOutlet weak var whisperImage: UIImageView!
    
}

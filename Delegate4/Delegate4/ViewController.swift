//
//  ViewController.swift
//  Delegate4
//
//  Created by Fausto Checa on 24/11/2018.
//  Copyright © 2018 ch2.fausto.com. All rights reserved.
//

import UIKit



// Delegate
class ViewController: UIViewController, PhotoDownloaderDelegate {
   
    @IBOutlet weak var imageView: UIImageView!
    
     let logoUrlString: String = "https://www.nationalgeographic.com.es/medio/2017/04/28/d3s3711_768dad04.jpg"
     var photoDownloader:PhotoDownloader?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoDownloader = PhotoDownloader(logoURL: logoUrlString)
        photoDownloader?.delegate = self // try nil here
        photoDownloader?.downloadLogo()
    }
   
    // Delegate
    func didFinishDownloading() {
        imageView.image = photoDownloader?.image
        
    }
 
    
}

//
//  PhotoDownloader.swift
//  Delegate4
//
//  Created by Fausto Checa on 24/11/2018.
//  Copyright © 2018 ch2.fausto.com. All rights reserved.
//

import Foundation
import UIKit



// Delegating does not implement the protocol, but gets the work done through the delegate ¡¡¡

class PhotoDownloader {
    var logoURL:String
    var image:UIImage?
    var delegate: PhotoDownloaderDelegate?
    
    init(logoURL:String) {
        self.logoURL = logoURL
    }
    
    func downloadLogo() {
        DispatchQueue.global().async {
            let imageURL = URL(string: self.logoURL)
            let imageData = NSData(contentsOf: imageURL!)
            self.image = UIImage(data: imageData! as Data)
            print("image downloaded")
            
            DispatchQueue.main.async {
                self.delegate?.didFinishDownloading()
            }
        }
    }
    
   
}
    
    
    


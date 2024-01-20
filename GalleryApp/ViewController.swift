//
//  ViewController.swift
//  GalleryApp
//
//  Created by Maliha on 11/1/24.
//

import UIKit

class ViewController: UITableViewController {
    
    var images = [UIImage(named: "IMG_4080")!,UIImage(named: "IMG_4081")!,UIImage(named: "IMG_4085")!,UIImage(named: "IMG_4082")!,UIImage(named: "IMG_4097")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.register(ImageCell.self, forCellReuseIdentifier: "ImageCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let image = images[indexPath.row]
        let imageRatio = CGFloat(image.size.width / image.size.height)
        
        return tableView.frame.width / imageRatio
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath) as! ImageCell
        cell.mainImageView.image = images[indexPath.row]
        
        //imageFromURL(urlString: "https://source.unsplash.com/random/200x200?sig=2", PlaceHolderImage: UIImage(named: "IMG_4080")!)
        
        return cell
    }
    
}

// not needed

//extension UIImageView {
//    
//    public func imageFromURL(urlString: String, PlaceHolderImage: UIImage) {
//        
//        URLSession.shared.dataTask(with: NSURL(string: urlString)! as URL, completionHandler: { (data, response, error) -> Void in
//            
//            if error != nil {
//                print(error ?? "No Error")
//                return
//            }
//            DispatchQueue.main.async(execute: { () -> Void in
//                let image = UIImage(data: data!)
//                self.image = image
//            })
//            
//        }).resume()
//        
//        if self.image == nil{
//            self.image = PlaceHolderImage
//        }
//    }
//    
//    
//}

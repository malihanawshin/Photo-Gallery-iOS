//
//  ImageCell.swift
//  GalleryApp
//
//  Created by Maliha on 13/1/24.
//

import UIKit

class ImageCell : UITableViewCell{
    
    @IBOutlet weak var ImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    
    func setImageFromUrl(ImageURL :String) {
       URLSession.shared.dataTask( with: NSURL(string:ImageURL)! as URL, completionHandler: {
          (data, response, error) -> Void in
          DispatchQueue.main.async {
             if let data = data {
                 self.ImageView.image = UIImage(data: data)
             }
          }
       }).resume()
    }
}

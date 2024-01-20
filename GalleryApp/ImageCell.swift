//
//  ImageCell.swift
//  GalleryApp
//
//  Created by Maliha on 13/1/24.
//

import UIKit

class ImageCell : UITableViewCell{
    
    //@IBOutlet weak var ImageView: UIImageView!
    
    var mainImageView : UIImageView = {
        var imageView = UIImageView(frame: CGRect.init(x: 0, y: 0, width: 0, height: 0))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        return imageView
    }()
    
    var imageViewHeight = NSLayoutConstraint()
    var imageRatioWidth = CGFloat()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    
        self.addSubview(mainImageView)
        mainImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        mainImageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    required init?(coder adecoder: NSCoder) {
        super.init(coder: adecoder)
        //fatalError("init(coder:) has not been implemented")
    }
    
    
//    func setImageFromUrl(ImageURL :String) {
//       URLSession.shared.dataTask( with: NSURL(string:ImageURL)! as URL, completionHandler: {
//          (data, response, error) -> Void in
//          DispatchQueue.main.async {
//             if let data = data {
//                 self.ImageView.image = UIImage(data: data)
//             }
//          }
//       }).resume()
//    }
}

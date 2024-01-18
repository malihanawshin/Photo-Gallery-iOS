//
//  ViewController.swift
//  GalleryApp
//
//  Created by Maliha on 11/1/24.
//

import UIKit

class ViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("Here")
        // Do any additional setup after loading the view.
        //tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 160
        tableView.register(UINib(nibName: "ImageCell", bundle: nil), forCellReuseIdentifier: "ImageCell")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath) as! ImageCell
        
        cell.ImageView.imageFromURL(urlString: "https://source.unsplash.com/random/200x200?sig=2", PlaceHolderImage: UIImage(named: "IMG_4080")!)
        
        return cell
    }
    

}

extension UIImageView {
    
    public func imageFromURL(urlString: String, PlaceHolderImage: UIImage) {
        
        URLSession.shared.dataTask(with: NSURL(string: urlString)! as URL, completionHandler: { (data, response, error) -> Void in
            
            if error != nil {
                print(error ?? "No Error")
                return
            }
            DispatchQueue.main.async(execute: { () -> Void in
                let image = UIImage(data: data!)
                self.image = image
            })
            
        }).resume()
        
        if self.image == nil{
            self.image = PlaceHolderImage
        }
    }
    
    
}

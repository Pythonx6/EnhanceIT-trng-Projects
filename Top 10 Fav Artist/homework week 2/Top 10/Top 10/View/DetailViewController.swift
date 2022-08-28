//
//  DetailViewController.swift
//  Top 10
//
//  Created by Consultant on 8/26/22.
//

import UIKit

class DetailViewController: UIViewController {
    var detailObj: Top10ListItem? = nil
    
    @IBOutlet weak var TitleText: UILabel!
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var Description: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TitleText.text = detailObj?.details.title
        Image.image = UIImage(named:(detailObj?.details.image)!)
        Description.text = detailObj?.details.description
    }
}

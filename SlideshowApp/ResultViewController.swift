//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 瀬古貴之 on 2020/02/21.
//  Copyright © 2020 takayuki.seko. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = self.image
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

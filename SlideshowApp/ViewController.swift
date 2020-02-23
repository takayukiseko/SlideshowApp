//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 瀬古貴之 on 2020/02/21.
//  Copyright © 2020 takayuki.seko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UIButton!
    
    //遷移させる
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.image = imageView.image!

    }

    
    
    
    
    
    
    
    //拡大画面から戻るためのボタン
  @IBAction func unwind(_ segue: UIStoryboardSegue) {
  }
    //画像
    //tap??
    
    
    //@IBAction func tapAction(_ sender: Any) {
    //}
    
    //画像
      //画像の上のボタンをtap
    @IBAction func tap(_ sender: Any) {
    }
    var timer: Timer!
    
    var dispImageNo = 0

    func displayImage() {

        // 画像の名前の配列
        let imageNameArray = [
            "o6e2a4bc816de267b29b0cbab4aaca6f7_34557732_200221_0072.jpg",
            "o6e2a4bc816de267b29b0cbab4aaca6f7_34557732_200221_0087.jpg",
            "o6e2a4bc816de267b29b0cbab4aaca6f7_34557732_200221_0091.jpg",
        ]

        // 表示している画像の番号から名前を取り出し
        let name = imageNameArray[dispImageNo]

        // 画像を読み込み
        let image = UIImage(named: name)

        // Image Viewに読み込んだ画像をセット
        imageView.image = image
        
        
    }

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let image = UIImage(named:"o6e2a4bc816de267b29b0cbab4aaca6f7_34557732_200221_0072.jpg")
   
        imageView.image = image
        
        
        
    }
    
    
    
    @objc func onTimer(_ timer: Timer) {
      if dispImageNo == 2 {
      dispImageNo = 0
      } else {
      dispImageNo += 1
      }
    displayImage()
      }
    
//戻るボタン
    @IBAction func backButtonAction(_ sender: Any) {
        if self.timer == nil {
            if dispImageNo == 0 {
                    dispImageNo = 2
                } else {
                    dispImageNo -= 1
                }
            displayImage()
            }
        }
        
///再生停止ボタン
    @IBAction func repaeatstopButtonAction(_ sender: Any) {
        //再生を押す
         if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector:#selector(onTimer(_:)), userInfo: nil, repeats: true)
            label.setTitle("停止", for: UIControl.State.normal)
         }
         // タイマーを停止する
         else if self.timer != nil{
           self.timer.invalidate()
           self.timer = nil
             label.setTitle("再生", for: UIControl.State.normal)
         }
        
       // Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: //#selector(onTimer(_:)), userInfo: nil, repeats: true)
    
    }
   
//進むボタン
    @IBAction func nextButtonAction(_ sender: Any) {
        if self.timer == nil {
             if dispImageNo == 2 {
                       dispImageNo = 0
                   } else {
                       dispImageNo += 1
                   }
                    displayImage()
                   }
        }
        
    
}


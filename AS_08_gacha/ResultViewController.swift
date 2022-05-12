//
//  ResultViewController.swift
//  AS_08_gacha
//
//  Created by 保坂篤志 on 2022/05/12.
//

import UIKit

class ResultViewController: UIViewController {
    
    var number: Int!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var monsterImageView: UIImageView!
    @IBOutlet weak var rareLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        gacha()
    }
   
    @IBAction func back(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    func gacha() {
        
        number = Int.random(in: 0...5)
        
        if number == 5 {
            
            monsterImageView.image = UIImage(named: "monster010")
            backgroundImageView.image = UIImage(named: "bg_gold")
            rareLabel.text = "スーパーレア！"
        }else if number > 3 {
            
            monsterImageView.image = UIImage(named: "monster006")
            backgroundImageView.image = UIImage(named: "bg_red")
            rareLabel.text = "レア！"
        }else {
            
            monsterImageView.image = UIImage(named: "monster003")
            backgroundImageView.image = UIImage(named: "bg_blue")
            rareLabel.text = "ノーマル"
        }
    }
    

}

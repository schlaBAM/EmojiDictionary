//
//  EmojiDefinitionVC.swift
//  EmojiDictionary
//
//  Created by BAM on 2017-09-26.
//  Copyright © 2017 BAM. All rights reserved.
//

import UIKit

class EmojiDefinitionVC: UIViewController {
    
    var emoji = Emoji()
    
    @IBOutlet weak var emojiImage: UILabel!
    @IBOutlet weak var emojiDefinition: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        emojiImage.text = emoji.emoji
        emojiDefinition.text = emoji.definition
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

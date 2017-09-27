//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by BAM on 2017-09-26.
//  Copyright © 2017 BAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    let emojiDictionary : [String : String] = ["🍑" : "A \"peach\"","👉🏿":"A black hand pointing at something awesome probably","👌":"All good symbol","🖕":"A nice elegant middle finger","🐹":"A cute little hamster","🙈":"A monkey covering their eyes instead of watching George jump off the cliff","🍕":"A good ol slice of za","💯":"The best number","🇨🇦":"Easily the best country's flag"]
    var keys : [String] = []
    var defs : [String] = []
    
    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        
        keys = [String](emojiDictionary.keys)
        defs = [String](emojiDictionary.values)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiDictionary.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = keys[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let emoji = Emoji()
        emoji.emoji = keys[indexPath.row]
        emoji.definition = defs[indexPath.row]
        
        performSegue(withIdentifier: "moveSegue", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiVC = segue.destination as! EmojiDefinitionVC
        emojiVC.emoji = sender as! Emoji
        
    }


}


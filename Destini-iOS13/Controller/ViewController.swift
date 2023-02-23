//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var storyText: UILabel!
    @IBOutlet var chooseOne: UIButton!
    @IBOutlet var chooseTwo: UIButton!
    
    
    var story = StoryBrain();
    var buttonType : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func chooseButton(_ sender: UIButton) {
        self.buttonType = sender.tag
        
        if buttonType == 1 {
            story.updateStoryNumber(number: story.destinationChooseOne())
        } else {
            story.updateStoryNumber(number: story.destinationChooseTwo())
        }
    
        updateUI()
    }

    
    func updateUI() {
        self.storyText.text = story.startStory()
        self.chooseOne.setTitle(story.chooseOne(), for: .normal)
        self.chooseTwo.setTitle(story.chooseTwo(), for: .normal)
    }
    
}


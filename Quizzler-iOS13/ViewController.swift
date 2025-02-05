//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz=[
    ["Four + Two is equal Six","True"],
    ["Five - Three is greater than One","True"],
    ["Three + Eight is less than Ten","False"]
    ]
    var questionNumber=0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func buttonPressed(_ sender:UIButton){
        questionNumber += 1;
        updateUI()
    }
    
    func updateUI(){
        questionLabel.text=quiz[questionNumber][0]
    }


}


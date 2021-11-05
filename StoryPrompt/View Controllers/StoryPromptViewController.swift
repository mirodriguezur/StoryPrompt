//
//  StoryPromptViewController.swift
//  StoryPrompt
//
//  Created by Michael Alexander Rodriguez Urbina on 29/10/21.
//

import UIKit

class StoryPromptViewController: UIViewController {

    @IBOutlet weak var storyPromptTextView: UITextView!
    
    var storyPrompt: StoryPromptEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyPromptTextView.text = storyPrompt?.description

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    

    @IBAction func cancelStoryPrompt(_ sender: Any) {
        performSegue(withIdentifier: "CancelStoryPrompt", sender: nil)
    }
}

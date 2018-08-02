//
//  VotingUIViewController.swift
//  Poll2
//
//  Created by Iyin Raphael on 8/2/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import UIKit

class VotingUIViewController: UIViewController, VoteControllerProtocol {
    var voteController: VoteController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var responseTextField: UITextField!
    @IBAction func vote(_ sender: Any) {
        guard let name = nameTextField.text,
            let response = responseTextField.text else {return}
        
        voteController?.createVote(name: name, response: response)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

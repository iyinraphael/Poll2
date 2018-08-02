//
//  CombinedViewController.swift
//  Poll2
//
//  Created by Iyin Raphael on 8/2/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {

    var voteController: VoteController?
    var resultsTableViewController: ResultsTableViewController!
    var votingViewController: VotingUIViewController!
   
    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultVc = segue.destination as? ResultsTableViewController {
        resultsTableViewController = resultVc
        resultsTableViewController.voteController = voteController
        
    }
        if let voteVc = segue.destination as? VotingUIViewController{
            votingViewController = voteVc
            votingViewController.voteController = voteController
        }

    }

}

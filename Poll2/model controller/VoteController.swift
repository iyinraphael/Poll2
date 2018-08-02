//
//  VoteController.swift
//  Poll2
//
//  Created by Iyin Raphael on 8/2/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import Foundation

class VoteController {
    
    
    func createVote(name: String, response: String){
        let vote = Vote(name: name, response: response)
        votes.append(vote)
    }
    
    var votes: [Vote] = []
}

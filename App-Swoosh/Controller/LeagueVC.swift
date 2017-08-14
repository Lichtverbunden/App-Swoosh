//
//  LeagueVC.swift
//  App-Swoosh
//
//  Created by Ken Krippeler on 14.08.17.
//  Copyright © 2017 Lichtverbunden. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue)
    {
        
        
    }
 
    @IBAction func nextTapped(_ sender: UIButton)
    {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    
}

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
    @IBOutlet weak var nextButton: UIButton!
    
    var player: Player!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        player = Player()
    }

    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue)
    {
        
        
    }
 
    @IBAction func nextTapped(_ sender: UIButton)
    {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func menButtonTapped(_ sender: UIButton)
    {
        selectLeague(leagueType: "men")
    }
    
    @IBAction func womenButtonTapped(_ sender: UIButton)
    {
        selectLeague(leagueType: "women")
    }
    
    @IBAction func coEdButtonTapped(_ sender: UIButton)
    {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String)
    {
        player.desiredLeague = leagueType
        nextButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let skillVC = segue.destination as? SkillVC
        {
            skillVC.player = player
        }
    }
}

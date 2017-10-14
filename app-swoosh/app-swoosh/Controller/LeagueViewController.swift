//
//  LeagueViewController.swift
//  app-swoosh
//
//  Created by Matt Osak on 2017-10-13.
//  Copyright © 2017 Matt Osak. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onMensTapped(_ sender: Any) {
        
        selectedLeague(leagueType: "mens")
       
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectedLeague(leagueType: "womens")
       
        
    }
    
      @IBAction func onCoedTapped(_ sender: Any) {
        selectedLeague(leagueType: "coed")

    }
  
    
    func selectedLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
        
    }
    

    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillViewController {
            skillVC.player = player
            
        }
        
    }
    

}

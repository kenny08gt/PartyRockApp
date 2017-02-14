//
//  ViewController.swift
//  PartyRockApp
//
//  Created by LionMane Software on 2/14/17.
//  Copyright © 2017 LionMane Software. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageUrl: "https://i.ytimg.com/vi/LhrMdN7EGV0/hqdefault.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Ea99ac2HtdE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Te quedaste")
        
        let p2 = PartyRock(imageUrl: "http://2.bp.blogspot.com/-_yCRMs1OH3U/UDK3JDqRH6I/AAAAAAAAEdA/8U3PH4cqRvE/s1600/tijuana-love-disco.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/grM-ShTDeYg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Love love love")
        
        partyRocks.append(p1)
        partyRocks.append(p2)

        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell{
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
        }else{
            return UITableViewCell()
        }
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let partyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC{
            if let party = sender as? PartyRock{
                destination.partyRock = party
            }
        }
    }
}


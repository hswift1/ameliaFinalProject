//
//  GameTableViewController.swift
//  ameliaFinalProject
//
//  Created by Soft Dev Student on 1/16/19.
//  Copyright © 2019 Amelia Lambert. All rights reserved.
//

import UIKit

// 14 regular season games as types

class GameDetailsTableViewController: UITableViewController {

    var gameList: [GameList] {
    
        let gameOne = GameDetails(opponent: "Cranston/EG", date: "12/07/18", time: "8:10", location: "Away", score: "-")
        let gameTwo = GameDetails(opponent: "Toll Gate/Pilgrim/Prout", date: "12/14/18", time: "7:30", location: "Home", score: "-")
        let gameThree = GameDetails(opponent: "Smithfield/Coventry/Rogers", date: "12/15/18", time: "9:00", location: "Away", score: "-")
        let gameFour = GameDetails(opponent: "Burrillville/Ponaganset/Bay View", date: "12/21/18", time: "7:30", location: "Home",   score: "-")
        let gameFive = GameDetails(opponent: "Barrington/Mt. Hope/Portsmouth", date: "12/22/18", time: "6:00", location: "Away", score: "-")
        let gameSix = GameDetails(opponent: "Cranston/Eg", date: "12/30/18", time: "5:00", location: "Home", score: "-")
        let gameSeven = GameDetails(opponent: "NK/Sk/Narragansett", date: "1/09/19", time: "7:00", location: "Away", score: "-")
        let gameEight = GameDetails(opponent: "Toll Gate/Pilgrim/Prout", date: "1/12/19", time: "6:00", location: "Away", score: "-")
        let gameNine = GameDetails(opponent: "Smithfield/Coventry/Rogers", date: "1/26/19", time: "7:30", location: "Away", score: "-")
        let gameTen = GameDetails(opponent: "Burrillville/Ponaganset/Bay View", date: "2/01/19", time: "5:00", location: "Away", score: "-")
        let gameEleven = GameDetails(opponent: "La Salle Academy", date: "2/02/19", time: "7:30", location: "Home", score: "-")
        let gameTwelve = GameDetails(opponent: "Barrington/Mt. Hope/Portsmouth", date: "2/08/19", time: "7:30", location:  "Home", score: "-")
        let gameThirteen = GameDetails(opponent: "La Salle Academy", date: "2/09/19", time: "7:30", location: "Away", score: "-")
        let gameFourteen = GameDetails(opponent: "NK/Sk/Narragansett", date: "2/15/19", time: "7:30", location: "Home", score: "-")
    
        let hockeyGames = GameList.init(name: "Hockey Games", gameDetails: [gameOne, gameTwo, gameThree, gameFour, gameFive, gameSix, gameSeven, gameEight, gameNine, gameTen, gameEleven, gameTwelve, gameThirteen, gameFourteen])

        return [hockeyGames]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return gameList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gameList[section].gameDetails.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "gameCell", for: indexPath)
        print(gameList)
        let game1 = gameList[indexPath.section]
        let gameDetails = game1.gameDetails[indexPath.row]
        
        cell.textLabel?.text = gameDetails.opponent
        cell.detailTextLabel?.text = gameDetails.date
//        cell.detailTextLabel?.text = gameDetails.time
//        cell.detailTextLabel?.text = gameDetails.location
//        cell.detailTextLabel?.text = gameDetails.score
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return gameList[section].name
    }


}

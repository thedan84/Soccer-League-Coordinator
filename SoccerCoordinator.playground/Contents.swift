import Foundation

//Create players using dicitionary syntax

let joeSmith: [String: AnyObject] = ["name": "Joe Smith", "heightInInches": 42.0, "hasSoccerExperience": true, "guardianName": "Jim and Jan Smith"]
let jillTanner: [String: AnyObject] = ["name": "Jill Tanner", "heightInInches": 36.0, "hasSoccerExperience": true, "guardianName": "Clara Tanner"]
let billBon: [String: AnyObject] = ["name": "Bill Bon", "heightInInches": 43.0, "hasSoccerExperience": true, "guardianName": "Sara and Jenny Bon"]
let evaGordon: [String: AnyObject] = ["name": "Eva Gordon", "heightInInches": 45.0, "hasSoccerExperience": false, "guardianName": "Wendy and Mike Gordon"]
let mattGill: [String: AnyObject] = ["name": "Matt Gill", "heightInInches": 40.0, "hasSoccerExperience": false, "guardianName": "Charles and Sylvia Gill"]
let kimmyStein: [String: AnyObject] = ["name": "Kimmy Stein", "heightInInches": 41.0, "hasSoccerExperience": false, "guardianName": "Bill and Hillary Stein"]
let sammyAdams: [String: AnyObject] = ["name": "Sammy Adams", "heightInInches": 45.0, "hasSoccerExperience": false, "guardianName": "Jeff Adams"]
let karlSaygan: [String: AnyObject] = ["name": "Karl Saygan", "heightInInches": 42.0, "hasSoccerExperience": true, "guardianName": "Heather Bledsoe"]
let suzaneGreenberg: [String: AnyObject] = ["name": "Suzane Greenberg", "heightInInches": 44.0, "hasSoccerExperience": true, "guardianName": "Henrietta Dumas"]
let salDali: [String: AnyObject] = ["name": "Sal Dali", "heightInInches": 41.0, "hasSoccerExperience": false, "guardianName": "Gala Dali"]
let joeKavalier: [String: AnyObject] = ["name": "Joe Kavalier", "heightInInches": 39.0, "hasSoccerExperience": false, "guardianName": "Sam and Elaine Kavalier"]
let benFinkelstein: [String: AnyObject] = ["name": "Ben Finkelstein", "heightInInches": 44.0, "hasSoccerExperience": false, "guardianName": "Aaron and Jill Finkelstein"]
let diegoSoto: [String: AnyObject] = ["name": "Diego Soto", "heightInInches": 41.0, "hasSoccerExperience": true, "guardianName": "Robin and Sarika Soto"]
let chloeAlaska: [String: AnyObject] = ["name": "Chloe Alaske", "heightInInches": 47.0, "hasSoccerExperience": false, "guardianName": "Davind and Jamie Alaska"]
let arnoldWillis: [String: AnyObject] = ["name": "Arnold Willis", "heightInInches": 43.0, "hasSoccerExperience": false, "guardianName": "Claire Willis"]
let phillipHelm: [String: AnyObject] = ["name": "Phillip Helm", "heightInInches": 44.0, "hasSoccerExperience": true, "guardianName": "Thomas Helm and Eva Jones"]
let lesClay: [String: AnyObject] = ["name": "Les Clay", "heightInInches": 42.0, "hasSoccerExperience": true, "guardianName": "Wynonna Brown"]
let herschelKrustofski: [String: AnyObject] = ["name": "Herschel Krustofski", "heightInInches": 45.0, "hasSoccerExperience": true, "guardianName": "Hyman and Rachel Krustofski"]

//Create array of players

let players = [
    joeSmith,
    jillTanner,
    billBon,
    evaGordon,
    mattGill,
    kimmyStein,
    sammyAdams,
    karlSaygan,
    suzaneGreenberg,
    salDali,
    joeKavalier,
    benFinkelstein,
    diegoSoto,
    chloeAlaska,
    arnoldWillis,
    phillipHelm,
    lesClay,
    herschelKrustofski
]

//Logic to sort experienced and unexperienced players

var experiencedPlayers = [[String: AnyObject]]()
var unexperiencedPlayers = [[String: AnyObject]]()

for player in players {
    if player["hasSoccerExperience"] as! Bool == true {
        experiencedPlayers.append(player)
    } else {
        unexperiencedPlayers.append(player)
    }
}

//Create team dictionaries

var dragons: [[String: AnyObject]] = []
var sharks: [[String: AnyObject]] = []
var raptors: [[String: AnyObject]] = []

var teams = [dragons, sharks, raptors]

//Logic to find average team's player count

let averageTeamsPlayerCount = players.count / teams.count
let experiencedPlayersCount = experiencedPlayers.count / teams.count

//Logic to sort players into teams

for experiencedPlayer in experiencedPlayers {
    if dragons.count < experiencedPlayersCount {
        dragons.append(experiencedPlayer)
    } else if sharks.count < experiencedPlayersCount {
        sharks.append(experiencedPlayer)
    } else if raptors.count < experiencedPlayersCount {
        raptors.append(experiencedPlayer)
    }
}

for unexperiencedPlayer in unexperiencedPlayers {
    if dragons.count < averageTeamsPlayerCount {
        dragons.append(unexperiencedPlayer)
    } else if sharks.count < averageTeamsPlayerCount {
        sharks.append(unexperiencedPlayer)
    } else if raptors.count < averageTeamsPlayerCount {
        raptors.append(unexperiencedPlayer)
    }
}

//Create personal letters to parents of the players

for dragonPlayer in dragons {
    print("Dear \(dragonPlayer["guardianName"] as! String),\n\(dragonPlayer["name"] as! String) was selected to play for the Dragons. We would like to welcome our new star at the first team practice on March 17, at 1 pm.\nDennis Parussini,\nHead Coach.")
}

for sharkPlayer in sharks {
    print("Dear \(sharkPlayer["guardianName"] as! String),\n\(sharkPlayer["name"] as! String) was selected to play for the Sharks. We would like to welcome our new star at the first team practice on March 17, at 3 pm.\nDennis Parussini,\nHead Coach.")
}

for raptorsPlayer in raptors {
    print("Dear \(raptorsPlayer["guardianName"] as! String),\n\(raptorsPlayer["name"] as! String) was selected to play for the Raptors. We would like to welcome our new star at the first team practice on March 18, at 1 pm.\nDennis Parussini,\nHead Coach.")
}



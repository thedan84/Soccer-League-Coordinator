import Foundation

//Create players using dicitionary syntax

let joeSmith: [String: Any] = ["name": "Joe Smith", "heightInInches": 42.0, "hasSoccerExperience": true, "guardianName": "Jim and Jan Smith"]
let jillTanner: [String: Any] = ["name": "Jill Tanner", "heightInInches": 36.0, "hasSoccerExperience": true, "guardianName": "Clara Tanner"]
let billBon: [String: Any] = ["name": "Bill Bon", "heightInInches": 43.0, "hasSoccerExperience": true, "guardianName": "Sara and Jenny Bon"]
let evaGordon: [String: Any] = ["name": "Eva Gordon", "heightInInches": 45.0, "hasSoccerExperience": false, "guardianName": "Wendy and Mike Gordon"]
let mattGill: [String: Any] = ["name": "Matt Gill", "heightInInches": 40.0, "hasSoccerExperience": false, "guardianName": "Charles and Sylvia Gill"]
let kimmyStein: [String: Any] = ["name": "Kimmy Stein", "heightInInches": 41.0, "hasSoccerExperience": false, "guardianName": "Bill and Hillary Stein"]
let sammyAdams: [String: Any] = ["name": "Sammy Adams", "heightInInches": 45.0, "hasSoccerExperience": false, "guardianName": "Jeff Adams"]
let karlSaygan: [String: Any] = ["name": "Karl Saygan", "heightInInches": 42.0, "hasSoccerExperience": true, "guardianName": "Heather Bledsoe"]
let suzaneGreenberg: [String: Any] = ["name": "Suzane Greenberg", "heightInInches": 44.0, "hasSoccerExperience": true, "guardianName": "Henrietta Dumas"]
let salDali: [String: Any] = ["name": "Sal Dali", "heightInInches": 41.0, "hasSoccerExperience": false, "guardianName": "Gala Dali"]
let joeKavalier: [String: Any] = ["name": "Joe Kavalier", "heightInInches": 39.0, "hasSoccerExperience": false, "guardianName": "Sam and Elaine Kavalier"]
let benFinkelstein: [String: Any] = ["name": "Ben Finkelstein", "heightInInches": 44.0, "hasSoccerExperience": false, "guardianName": "Aaron and Jill Finkelstein"]
let diegoSoto: [String: Any] = ["name": "Diego Soto", "heightInInches": 41.0, "hasSoccerExperience": true, "guardianName": "Robin and Sarika Soto"]
let chloeAlaska: [String: Any] = ["name": "Chloe Alaske", "heightInInches": 47.0, "hasSoccerExperience": false, "guardianName": "Davind and Jamie Alaska"]
let arnoldWillis: [String: Any] = ["name": "Arnold Willis", "heightInInches": 43.0, "hasSoccerExperience": false, "guardianName": "Claire Willis"]
let phillipHelm: [String: Any] = ["name": "Phillip Helm", "heightInInches": 44.0, "hasSoccerExperience": true, "guardianName": "Thomas Helm and Eva Jones"]
let lesClay: [String: Any] = ["name": "Les Clay", "heightInInches": 42.0, "hasSoccerExperience": true, "guardianName": "Wynonna Brown"]
let herschelKrustofski: [String: Any] = ["name": "Herschel Krustofski", "heightInInches": 45.0, "hasSoccerExperience": true, "guardianName": "Hyman and Rachel Krustofski"]

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

var experiencedPlayers: [[String: Any]] = []
var unexperiencedPlayers: [[String: Any]] = []

for player in players {
    guard let isExperienced = player["hasSoccerExperience"] as? Bool else { break }
    
    switch isExperienced {
    case true: experiencedPlayers.append(player)
    case false: unexperiencedPlayers.append(player)
    }
}

//Create team dictionaries

var dragons: [[String: Any]] = []
var sharks: [[String: Any]] = []
var raptors: [[String: Any]] = []

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

var letters = [String]()

func createLetters(for team: String, with players: [[String: Any]]) {
    for player in players {
        if let guardians = player["guardianName"] as? String, let name = player["name"] as? String {
            
            let letter = """
            Dear \(guardians),
            \(name) was selected to play for the \(team). We would like to welcome our new star at the first team practice on March 17, at 1 pm.
            Dennis Parussini,
            Head Coach.
            """
            
            letters.append(letter)
        }
    }
}

createLetters(for: "Dragons", with: dragons)
createLetters(for: "Raptors", with: raptors)
createLetters(for: "Sharks", with: sharks)

for letter in letters {
    print(letter)
}

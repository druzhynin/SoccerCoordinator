// This is mine SoccerCoordinator project that is also a First Techdegree Project for Treehouse

// I'm totally sorry for my english :) Treehouse iOS learning program will also help me to rise my english level


// ------------------------------------------------------------------------------------------
// PART 1 of 3

// I made a dictionary for every player with string values of arguments and then made an array of dictionaries

let joeSmith: [String: Any] = ["name": "Joe Smith", "heightInInches": 42, "soccerExperience": true, "guardianNames": "Jim and Jan Smith"]
let jillTanner: [String: Any] = ["name": "Jill Tanner", "heightInInches": 36, "soccerExperience": true, "guardianNames": "Clara Tanner"]
let billBon: [String: Any] = ["name": "Bill Bon", "heightInInches": 43, "soccerExperience": true, "guardianNames": "Sara and Jenny Bon"]
let evaGordon: [String: Any] = ["name": "Eva Gordon", "heightInInches": 45, "soccerExperience": false, "guardianNames": "Wendy and Mike Gordon"]
let mattGill: [String: Any] = ["name": "Matt Gill", "heightInInches": 40, "soccerExperience": false, "guardianNames": "Charles and Sylvia Gill"]
let kimmyStein: [String: Any] = ["name": "Kimmy Stein", "heightInInches": 41, "soccerExperience": false, "guardianNames": "Bill and Hillary Stein"]
let sammyAdams: [String: Any] = ["name": "Sammy Adams", "heightInInches": 45, "soccerExperience": false, "guardianNames": "Jeff Adams"]
let karlSaygan: [String: Any] = ["name": "Karl Saygan", "heightInInches": 42, "soccerExperience": true, "guardianNames": "Heather Bledsoe"]
let suzaneGreenberg: [String: Any] = ["name": "Suzane Greenberg", "heightInInches": 44, "soccerExperience": true, "guardianNames": "Henrietta Dumas"]
let salDali: [String: Any] = ["name": "Sal Dali", "heightInInches": 41, "soccerExperience": false, "guardianNames": "Gala Dali"]
let joeKavalier: [String: Any] = ["name": "Joe Kavalier", "heightInInches": 39, "soccerExperience": false, "guardianNames": "Sam and Elaine Kavalier"]
let benFinkelstein: [String: Any] = ["name": "Ben Finkelstein", "heightInInches": 44, "soccerExperience": false, "guardianNames": "Aaron and Jill Finkelstein"]
let diegoSoto: [String: Any] = ["name": "Diego Soto", "heightInInches": 41, "soccerExperience": true, "guardianNames": "Robin and Sarika Soto"]
let chloeAlaska: [String: Any] = ["name": "Chloe Alaska", "heightInInches": 47, "soccerExperience": false, "guardianNames": "David and Jamie Alaska"]
let arnoldWillis: [String: Any] = ["name": "Arnold Willis", "heightInInches": 43, "soccerExperience": false, "guardianNames": "Claire Willis"]
let phillipHelm: [String: Any] = ["name": "Phillip Helm", "heightInInches": 44, "soccerExperience": true, "guardianNames": "Thomas Helm and Eva Jones"]
let lesClay: [String: Any] = ["name": "Les Clay", "heightInInches": 42, "soccerExperience": true, "guardianNames": "Wynonna Brown"]
let herschelKrustofski: [String: Any] = ["name": "Herschel Krustofski", "heightInInches": 45, "soccerExperience": true, "guardianNames": "Hyman and Rachel Krustofski"]

let players = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

// ------------------------------------------------------------------------------------------
// PART 2 of 3

// Defined empty variables for each team and league. experienced

var sharksTeam: [[String:Any]] = []
var dragonsTeam: [[String:Any]] = []
var raptorsTeam: [[String:Any]] = []
var hasExperience: [[String:Any]] = []
var hasNoExperience: [[String:Any]] = []
var soccerLeague = ["Sharks": sharksTeam, "Dragons": dragonsTeam, "Raptors": raptorsTeam]
soccerLeague

//Made a function that sorts players in two dictionaries depending on their experience

func sortPlayersToLists() {
    for player in players {
        if player["soccerExperience"] as! Bool == true {
            hasExperience.append(player)
        } else {
            hasNoExperience.append(player)
        }
    }
}

sortPlayersToLists()

//Defined a constants that will help me to sort players in next function

let teamMaxCapacity = players.count / soccerLeague.count
let maxExperiencedPlayersPerTeam = hasExperience.count / soccerLeague.count
let maxUnexperiencedPlayersPerTeam = hasNoExperience.count / soccerLeague.count

//Made a function that assign experienced and unexperienced players to teams and checks if there is not too much experienced players in each team

func assignExperiencedPlayersToTeams(listOfPlayers list: Array <[String:Any]>) {
    
    for player in list {
        if sharksTeam.count < maxExperiencedPlayersPerTeam {
            sharksTeam.append(player)
        } else if dragonsTeam.count < maxExperiencedPlayersPerTeam {
            dragonsTeam.append(player)
        } else if raptorsTeam.count < maxExperiencedPlayersPerTeam {
            raptorsTeam.append(player)
        } else if sharksTeam.count < teamMaxCapacity {
            sharksTeam.append(player)
        } else if dragonsTeam.count < teamMaxCapacity {
            dragonsTeam.append(player)
        } else if raptorsTeam.count < teamMaxCapacity {
                raptorsTeam.append(player)
        }
    }
}

assignExperiencedPlayersToTeams(listOfPlayers: hasExperience)
assignExperiencedPlayersToTeams(listOfPlayers: hasNoExperience)

soccerLeague["Sharks"] = sharksTeam
soccerLeague["Dragons"] = dragonsTeam
soccerLeague["Raptors"] = raptorsTeam
soccerLeague

// ------------------------------------------------------------------------------------------
// PART 3 of 3

func sendLettersToGuardians(nameOfTeam team: String) {
    var practiceTime: String
    for player in [soccerLeague[team]] {
        let playerName = [player["name"]]
        let guardianName = player["guardianNames"]
        switch team {
            case "Sharks":  practiceTime = "March 17, 13:00"
            case "Dragons": practiceTime = "March 17, 15:00"
            case "Raptors": practiceTime = "March 18, 13:00"
            default: practiceTime = "No such team in schedule"
        }
        
        print("Dear, \(guardianName!)! \nI'm happy to inform you that \(playerName!) became a part of \(team) Soccer Team. First practice is arranged on \(practiceTime). In case of any questions fill free to contact me. Phone number is 555-55-55!\n")
    }
}

sendLettersToGuardians(nameOfTeam: "Sharks")
sendLettersToGuardians(nameOfTeam: "Dragons")
sendLettersToGuardians(nameOfTeam: "Raptors")


/*
func sendLettersToGuardians() {
    for team in soccerLeague {
        switch team {
        case "Sharks":
            var practiceTime: String
            let playerName = sharksTeam["name"]
            let guardianName = sharksTeam["guardianNames"]
        case "Dragons":
            print("Dragons!!!")
        case "Raptors":
            print("Raptors!")
            default:
                print("No such team!")
        }
    }
}
*/

/*
//Made a function that calculates players avarage height in inches *** But I really don't know how to use it in EXTRA CREDIT achivement ***
func averageHeightOfPlayers() -> Int {
    
    var totalHeight = 0
    for player in players {
        totalHeight += player["heightInInches"] as! Int
    }
    
    let averageHeight = totalHeight / players.count
    return averageHeight
}
averageHeightOfPlayers()

func averageHeightOfDragons() -> Int {
    
    var totalHeight = 0
    for player in dragonsTeam {
        totalHeight += player["heightInInches"] as! Int
    }
    
    let averageHeight = totalHeight / dragonsTeam.count
    return averageHeight
}

func averageHeightOfSharks() -> Int {
    
    var totalHeight = 0
    for player in sharksTeam {
        totalHeight += player["heightInInches"] as! Int
    }
    
    let averageHeight = totalHeight / sharksTeam.count
    return averageHeight
}

func averageHeightOfRaptors() -> Int {
    
    var totalHeight = 0
    for player in raptorsTeam {
        totalHeight += player["heightInInches"] as! Int
    }
    
    let averageHeight = totalHeight / raptorsTeam.count
    return averageHeight
}
*/

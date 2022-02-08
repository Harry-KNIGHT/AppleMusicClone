//
//  AlbumRessources.swift
//  SpotifyClone
//
//  Created by Elliot Knight on 07/02/2022.
//

import Foundation


struct Music: Identifiable {
    var id = UUID()
    let musicNumber: Int
    let albumName: String
    let group: String
    let musicName: String
    let releasDate: Int
    
    
}

var musics: [Music] = [
    Music(musicNumber: 0, albumName: "The Doors", group: "The Doors", musicName: "Break on Through (To the Other Side)", releasDate: 1967),
        Music(musicNumber: 1, albumName: "The Doors", group: "The Doors", musicName: "Soul Kitchen", releasDate: 1967),
        Music(musicNumber: 2, albumName: "The Doors", group: "The Doors", musicName: "The Crystal Ship", releasDate: 1967),
        Music(musicNumber: 3, albumName: "The Doors", group: "The Doors", musicName: "Twentieth Century Fox", releasDate: 1967),
        Music(musicNumber: 4, albumName: "The Doors", group: "The Doors", musicName: "Alabama song (Whisky Bar)", releasDate: 1967),
        Music(musicNumber: 5, albumName: "The Doors", group: "The Doors", musicName: "Light My Fire", releasDate: 1967),
        Music(musicNumber: 6, albumName: "The Doors", group: "The Doors", musicName: "Back Door Man", releasDate: 1967),
        Music(musicNumber: 7, albumName: "The Doors", group: "The Doors", musicName: "I Looked at you", releasDate: 1967),
        Music(musicNumber: 8, albumName: "The Doors", group: "The Doors", musicName: "End Of The Night", releasDate: 1967),
        Music(musicNumber: 9, albumName: "The Doors", group: "The Doors", musicName: "Take It As It Comes", releasDate: 1967),
        Music(musicNumber: 10, albumName: "The Doors", group: "The Doors", musicName: "The End", releasDate: 1967),


    ]

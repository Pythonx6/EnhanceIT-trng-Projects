//
//  Constants.swift
//  Top 10
//
//  Created by Consultant on 8/26/22.
//

import UIKit

struct Images{
    
}

// MARK: - FAV 10 ARTIST LIST = 10 ARTISTAS FAVORITOS

let Top10List = [
    Top10ListItem(title:  Details.BadBunny.title, image: "BadBunny.jpeg", details: Details.BadBunny),
    
    Top10ListItem(title:  Details.DaddyYankee.title, image: "DaddyYankee.png", details: Details.DaddyYankee),
    
    Top10ListItem(title:  Details.DonOmar.title, image: "DonOmar.jpeg", details: Details.DonOmar),
    
    Top10ListItem(title:  Details.FluxPavilion.title, image: "FluxPavilion.jpeg", details: Details.FluxPavilion),
    
    Top10ListItem(title:  Details.Krewella.title, image: "Krewella.jpeg", details: Details.Krewella),
    
    Top10ListItem(title:  Details.LindsyStirling.title, image: "LindsyStirling.jpeg", details: Details.LindsyStirling),
    
    Top10ListItem(title:  Details.Nach.title, image: "Nach.jpeg", details: Details.Nach),
    
    Top10ListItem(title:  Details.Neffex.title, image: "Neffex.jpeg", details: Details.Neffex),
    
    Top10ListItem(title:  Details.Soja.title, image: "Soja.png", details: Details.Soja),
    
    Top10ListItem(title:  Details.SteveAoki.title, image: "SteveAoki.jpeg", details: Details.SteveAoki),
]


//MARK: - Description = Descripciones

struct Details{
    
    static let BadBunny = DetailItem(title: "Bad Bunny", image: "BadBunny.jpeg", description: "Bad Bunny was born Benito Antonio Martínez Ocasio in San Juan, Puerto Rico, on March 10, 1994. He is a composer and singer of urban music, especially trap and reggaeton.")
    
    static let DaddyYankee = DetailItem(title: "Daddy Yankee", image: "DaddyYankee.png", description: "Puerto Rican singer, songwriter and producer, one of the most prominent representatives of reggaeton.")
    
    static let DonOmar = DetailItem(title: "Don Omar", image: "DonOmar.jpeg", description: " William Omar Landrón Rivera is an Actor, Car Driver, Entrepreneur, Musical Composer, Record Producer and Dembow Singer and has sold 70 million sales and won 30 awards.")
    
    static let FluxPavilion = DetailItem(title: "FluxPavilion", image: "Final Fantasy 15 Game.jpeg", description: "Joshua Steele, known professionally as Flux Pavilion, is an English dubstep producer and DJ. He is the co-founder of Circus Record.")
    
    static let Krewella = DetailItem(title: "Krewella", image: "Krewella.jpeg", description: "Krewella is an American electronic dance music band from the Chicago suburb of Northbrook, Illinois, United States, that formed in 2007. Their musical style has been mainly described as EDM, dance-rock, and dance-pop.")
    
    static let LindsyStirling = DetailItem(title: "Lindsy Stirling", image: "LindsyStirling.jpeg", description: "Lindsy Stirling is an American violinist, songwriter, and dancer. She presents choreographed violin performances, in live and music videos.")
    
    static let Nach = DetailItem(title: "Nach", image: "Nach.jpeg", description: "Ignacio Fornés Olmo (Albacete, Spain, October 1, 1974) is a Spanish rapper, poet, writer, sociologist and actor, initially known as Nach Scratch.")
    
    static let Neffex = DetailItem(title: "Neffex", image: "Neffex.jpeg", description: "Neffex is an American music project by Bryce Savage (born Brandon Horth) that originally included Cameron Wales. They produced remixes and original songs characterized by a mixture of electronic and rap genres.")
    
    static let Soja = DetailItem(title: "Soilder of Jah Army", image: "Soja.png", description: "Soja is an American Grammy-award winning reggae band based in Arlington, Virginia. Formed in 1997, their music is currently produced under ATO Records. ")
    
    static let SteveAoki = DetailItem(title: "Steve Aoki", image: "SteveAoki.jpeg", description: "He's an American electro house musician, record producer, D.J. & music executive.")
}

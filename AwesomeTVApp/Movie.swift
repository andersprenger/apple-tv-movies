//
//  Movie.swift
//  AwesomeTVApp
//
//  Created by Anderson Sprenger on 31/03/22.
//

import Foundation

struct Movie {
    let name: String
    let overview: String
}

extension Movie {
    static var movies: [Movie] = [
        Movie(
            name: "Turning Red",
            overview: "Thirteen-year-old Mei is experiencing the awkwardness of being a teenager with a twist – when she gets too excited, she transforms into a giant red panda."),
        Movie(
            name: "Spider-Man: No Way Home",
            overview: "Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man."),
        Movie(
            name: "Svart krabba",
            overview: "To end an apocalyptic war and save her daughter, a reluctant soldier embarks on a desperate mission to cross a frozen sea carrying a top-secret cargo"),
        Movie(
            name: "The Adam Project",
            overview: "After accidentally crash-landing in 2022, time-traveling fighter pilot Adam Reed teams up with his 12-year-old self on a mission to save the future."),
        Movie(
            name: "Encanto",
            overview: "The tale of an extraordinary family, the Madrigals, who live hidden in the mountains of Colombia, in a magical house, in a vibrant town, in a wondrous, charmed place called an Encanto. The magic of the Encanto has blessed every child in the family with a unique gift from super strength to the power to heal—every child except one, Mirabel. But when she discovers that the magic surrounding the Encanto is in danger, Mirabel decides that she, the only ordinary Madrigal, might just be her exceptional family's last hope."),
        Movie(
            name: "Blacklight",
            overview: "Travis Block is a shadowy Government agent who specializes in removing operatives whose covers have been exposed. He then has to uncover a deadly conspiracy within his own ranks that reaches the highest echelons of power."),
        Movie(
            name: "The Batman",
            overview: "In his second year of fighting crime, Batman uncovers corruption in Gotham City that connects to his own family while facing a serial killer known as the Riddler.")
    ]
}

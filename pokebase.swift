import Foundation
import LogicKit

func test() {
    let kb: KnowledgeBase = [
        .fact("is effective against", .fact("water"), .fact("fire")),
        .fact("is effective against", .fact("fire"), .fact("grass")),
        .fact("is effective against", .fact("grass"), .fact("water")),

        .fact("has type", .fact("Bulbasaur"), .fact("grass")),
        .fact("has type", .fact("Squirtle"), .fact("water")),
        .fact("has type", .fact("Charmander"), .fact("fire")),
    ]

    var answers = kb.ask(.fact("has type", .fact("Squirtle"), .fact("water")))
    print("Squirtle has type water:", answers.next() != nil)
}


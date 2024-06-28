import Foundation
import LogicKit

enum Finalists {
    case beth, ben, betsy
}

let finalist = "finalist"/2
let recipe = "recipe"/6
    
let kb1: KnowledgeBase = [
    recipe("third", "red", "three", "one", "one", "four"),
    recipe("first", "gold", "two", "three", "two", "six"),
    recipe("second", "white", "one", "two", "three", "two"),
    finalist("beth", "third"),
    finalist("ben", "first"),
    finalist("betsy", "second")
]

let kb2: KnowledgeBase = [
    .fact("mayo", .fact("one"), .fact("two"), .fact("three") ),
    .fact("onion", .fact("one"), .fact("two"), .fact("three") ),
    .fact("potato", .fact("white"), .fact("red"), .fact("gold") ),
    .fact("celery", .fact("one"), .fact("two"), .fact("three") ),
    .fact("vinegar", .fact("two"), .fact("two"), .fact("six") )
]



print("loaded?!")


/*
var theStory = """
Beth, Ben and Betsy were the three finalists in a "Best Potato Salad" contest. Naturally, they finished first, second and third in the contest. Their recipes were all slightly different. The recipes used white, red and gold potatoes; 1, 2 and 3 cups of mayonnaise; and 1, 2 and 3 red onions; and 1, 2 and 3 cups of celery. Finally, they used 2, 4 or 6 tablespoons of vinegar. Using the clues provided, logically deduce the finalists' order of finish, color of potatoes and amount of mayonnaise, onions, celery and vinegar used in their recipes.
"""
 
var theClues = [
     "The winner of the contest did not use 1 cup of mayo, 1 red onion or 1 cup of celery.",
     "The third place contestant used the most mayo, but only 1 red onion and 1 cup of celery.",
     "Betsy finished higher than Beth, and Beth used twice as much vinegar as Betsy.",
     "Ben used more mayo and onions than Betsy, and Betsy used more celery than Ben.",
     "The winner of the contest did not use white or red potatoes, and the white potatoes received a higher place then the red potatoes."
 ]

 */



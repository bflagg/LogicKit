import LogicKit
import LogicKitBuiltins

let finalist = "finalist"/2
let recipe = "recipe"/6

enum Finalists {
    case beth, ben, betsy
}

enum Mayo {
    case one, two, three
}

enum Celery {
    case one, two, three
}

enum Onion {
    case one, two, three
}

enum Potato {
    case white, red, gold
}

enum Vinegar {
    case two, four, six
}

let kb: KnowledgeBase = [
    recipe("third", Potato.red, Mayo.three, Onion.one, Celery.one, Vinegar.four),
    recipe("first", Potato.gold, Mayo.two, Onion.three, Celery.two, Vinegar.six),
    recipe("second", Potato.white, Mayo.one, Onion.two, Celery.three, Vinegar.two),
    finalist(Finalists.beth, "third"),
    finalist("ben", "first"),
    finalist("betsy", "second"),

    .rule("winner", .var("x") ) {
        .fact("finalist", .var("x"), "first")
    }
]

func test(q: Term) {
    let answers = kb.ask(.fact("winner", q), logger: DefaultLogger() )
    if answers.next() != nil {
        print("term is a winner")
    } else {
        print("term is a loser.")
    }
    // _ = Array(answers)

}





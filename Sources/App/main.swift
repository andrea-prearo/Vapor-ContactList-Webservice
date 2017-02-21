import Vapor
import SwiftyBeaverVapor
import SwiftyBeaver

let logger = SwiftyBeaverProvider(destinations: [ConsoleDestination()])

let app = Droplet()
app.addProvider(logger)
let log = app.log.self

app.get("/") { _ in
    return "Hello!"
}

app.run()

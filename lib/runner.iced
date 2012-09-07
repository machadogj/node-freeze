runner  = module.exports
connect = require 'connect'
http    = require 'http'

runner.run = () ->
    app = connect().use(connect["static"](process.cwd()));
    http.createServer(app).listen(3000);
    console.log "started server on http://localhost:3000"

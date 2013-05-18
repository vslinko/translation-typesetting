symfio = require "symfio"

module.exports = container = symfio "translation-typesetting", __dirname

loader = container.get "loader"

container.set "components", [
  "angular#~1.0"
]

loader.use require "symfio-contrib-express"
loader.use require "symfio-contrib-express-logger"
loader.use require "symfio-contrib-assets"
loader.use require "symfio-contrib-mongoose"
loader.use require "symfio-contrib-bower"
loader.use require "./plugins/translation-typesetting"
loader.use require "./plugins/calculations"

loader.load() if require.main is module

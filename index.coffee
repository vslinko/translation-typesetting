symfio = require "symfio"

module.exports = container = symfio "translation-typesetting", __dirname

loader = container.get "loader"

loader.use require "symfio-contrib-express"
loader.use require "symfio-contrib-express-logger"
loader.use require "symfio-contrib-assets"
loader.use require "symfio-contrib-mongoose"
loader.use require "./plugins/translation-typesetting"

loader.load() if require.main is module

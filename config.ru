$LOAD_PATH.push File.expand_path("../app", __FILE__)
$LOAD_PATH.push File.expand_path("../app/models", __FILE__)

require "app"

run SampleSinatra::App

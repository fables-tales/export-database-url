$: << "."
require "app"

use Rack::Auth::Basic, "auth" do |username, password|
    password == ENV.fetch("RACK_PASSWORD")
end

run App.new

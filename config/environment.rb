ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

configure :development do
  set :database, "sqlite3:db/database.db"
end
# this didn't actually create those files 
#or folders yet - that's what Rake will help us with!

require './app'
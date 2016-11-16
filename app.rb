require('./lib/rock')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get ('/output') do
  @score = params.fetch('user_choice').rock_score()
  erb(:output)
end

require('sinatra')
require('sinatra/reloader')
require('./lib/title_case.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

post('/casing') do
  @final = params.fetch('casing').title_case()
  erb(:casing)
end

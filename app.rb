require('sinatra')
require('pry')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/output') do
  @output = params.fetch("sentence").word_count("word")
  @sentence = params.fetch("sentence")
  @word = params.fetch("word")
  erb(:output)
end

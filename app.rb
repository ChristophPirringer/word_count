require('sinatra')
require('pry')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/output') do
  @sentence = params.fetch("sentence")
  @word = params.fetch("word")
  @output = @sentence.word_count(@word)
  erb(:output)
end

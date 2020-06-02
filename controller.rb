require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/film.rb')
also_reload('./models/*')

get '/' do
    erb( :home )
end

get '/films' do
    @film_list = Film.all
    erb( :index )
end

get '/ghost' do
    erb(:ghost)
end

get '/sixsense' do
    erb(:sixsense)
end

get '/beetlejuice' do
    erb(:beetlejuice)
end

get '/casper' do
    erb(:casper)
end
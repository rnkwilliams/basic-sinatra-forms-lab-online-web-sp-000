require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    get '/newteam' do
        erb :newteam
    end

    post '/team' do
    binding.pry
        @name = params["name"]
        @coach = params["coach"]
        @pg = params["pg"]
        @sg = params["sg"]
        @pf = params["pf"]
        @sf = params["sf"]
        @center = params["c"]

        erb :team
    end
end

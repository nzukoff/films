class ActorsController < ApplicationController
    def index
        @actors = Actor.all
    end

    def show
        @actor = Actor.find(params[:id])
    end

    def new
        @actor = Actor.new
    end

    def create
        name = params[:actor][:name]
        Actor.create({name: name})
        redirect_to actors_path
    end

    def newfilm
        @actor = Actor.find(params[:id])
        @film = Film.new
    end

    def createfilm
        name = params[:film][:name]
        f = Film.create({name: name})
        a = Actor.find(params[:id])
        a.films.push(f)
        redirect_to actor_path(a)
    end
end
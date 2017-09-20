class FilmsController < ApplicationController
    def new 
        @film = Film.new
    end

end
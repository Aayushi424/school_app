class HomeController < ApplicationController

    def index
        render json: {"data":"123"}
    end
end

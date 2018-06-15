class EntriesController < ApplicationController
    def index
        # here we'll define some @instance_variables to store data from the database for the views to use
        # render :index
    end

    def show
        #show page usually shows a single instance of that type of data
        render :show
    end
    def new
        render :new
    end
    def create
        redirect_to enteries_url
    end
    def edit
        render :edit
    end
    def update
        redirect_to entry_url(params[:id])
    end
    def destroy
        redirect_to "/index"
    end

end

class EntriesController < ApplicationController
    def index
        # here we'll define some @instance_variables to store data from the database for the views to use
        # render :index

        @enteries = Entry.all
    end

    def show
        #show page usually shows a single instance of that type of data
        @entry = Entry.find(params[:id])
        render :show
    end
    def new
        @entry = Entry.new
    end
    def create
        @entry = Entry.new
        @entry.word = params[:entry][:word]
        @entry.definition = params[:entry][:definition]
        @entry.language = params[:entry][:language]

        if @entry.save
            redirect_to entries_url
        else
            redirect_to new_entry_url
        end
    end
    def edit
        @entry = Entry.find(params[:id])
    end
    def update
        @entry = Entry.find(params[:id])

        @entry.word = params[:entry][:word]
        @entry.definition = params[:entry][:definition]
        @entry.language = params[:entry][:language]

        if @entry.save
            redirect_to entries_url
        else
            redirect_to edit_entry_url(@entry)
        end
    end
    def destroy
        @entry = Entry.find(params[:id])
        @entry.destroy
        redirect_to entries_url
    end

end

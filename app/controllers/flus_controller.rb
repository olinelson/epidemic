class FlusController < ApplicationController
    before_action :find_flu, only: [:show]

    def index
        @flus = Flu.all
    end 

    def show 
        @victims = @flu.victims
    end 

    def new 
        @flu = Flu.new
    end 

    def create
        @flu = Flu.create(flu_params)
        if @flu.valid?
            redirect_to flu_path(@flu)
        else 
            flash[:errors] = @flu.errors.full_messages
            redirect_to new_flu_path
        end
    end

    def edit 
    end 

    def update
    end 

    def destroy
    end 

    private 

    def find_flu 
        @flu = Flu.find(params[:id])
    end 

    def flu_params
        params.require(:flu).permit(:nickname, :strain,:fatal)
    end

end

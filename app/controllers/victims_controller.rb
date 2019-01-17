class VictimsController < ApplicationController
    before_action :set_victim, only: [:show, :destroy]

    def index
        @victims = Victim.all
    end 

    def show 
    end 

    def new
        @victim = Victim.new
        @flus = Flu.all
    end

    def create
        @victim = Victim.create(victim_params)
        redirect_to victim_path(@victim)
    end

    def edit
    end

    def update
    end

    def destroy
        @victim.destroy
        redirect_to victims_path
    end 

    private 
    def set_victim
        @victim = Victim.find(params[:id])
    end 

    def victim_params
        params.require(:victim).permit(:name, :age, :flu_id)
    end
end

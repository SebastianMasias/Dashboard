class SimcardController < ApplicationController
    #create simcard controller
    def create
        @simcard = Simcard.new(simcard_params)
        if @simcard.save
            redirect_to @simcard
        else
            render 'new'
        end
    end
    #read simcard controller
    def index
        @simcards = Simcard.all
    end
    #show simcard controller
    def show
        @simcard = Simcard.find(params[:id])
    end
    #new simcard controller
    def new
        @simcard = Simcard.new
    end
    #edit simcard controller
    def edit
        @simcard = Simcard.find(params[:id])
    end
    #update simcard controller
    def update
        @simcard = Simcard.find(params[:id])
        if @simcard.update(simcard_params)
            redirect_to @simcard
        else
            render 'edit'
        end
    end
    #destroy simcard controller
    def destroy
        @simcard = Simcard.find(params[:id])
        @simcard.destroy
        redirect_to simcards_path
    end
    #private method
    private
    def simcard_params
        params.require(:simcard).permit(:number, :consumtion, :balance, :client_id)
    end
end

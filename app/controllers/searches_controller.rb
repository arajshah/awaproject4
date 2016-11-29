class SearchesController < ApplicationController

    def new 
        @search = Search.new
        @categories = Reportnumbers.uniq.pluck(:category)
    end
    
    def 
    @search = Search.create(search_params)
    redirect_to @search
    end

    def show
        @search = Search.find(params[:id])
    end
    
    private
    
    def search_params
        params.require(:search).permit(:phonenumber,:location, :category)
    end
    

end

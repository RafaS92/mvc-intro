class ApplicationController < Sinatra::Base

    set(:views, 'app/views')

    get "/list_airlines" do
        @airlines = Airline.all
        
        erb :list_airlines
    end
    
    get "/get-airline/:id" do 
        @single_airline = Airline.find(params[:id])
       
       
        
            

        erb :single_airline
    end
 
end


### HTTP Method  + URL  -> Address/Function Name
### Headers -> Postage
### Body -> Contents
class SessionsController < ApplicationController

def new
end

def create
    if params[:name] != nil && params[:name] != ""
        session[:name] = params[:name]
    else 
        return redirect_to login_path
    end
end

def destroy
    if session[:name]
        session.delete :name
    end
end

end
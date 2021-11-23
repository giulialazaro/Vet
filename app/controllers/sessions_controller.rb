class SessionsController < ApplicationController
  skip_before_action :require_authentication
    layout "login"
  
    def new
      
    end
  
    def create
      @admin = Admin.find_by(username: params[:session][:username])
      if @admin && @admin.authenticate(params[:session][:password])
        session[:admin_id] = @admin.id
      else
        flash[:alert] = "Usuario e/ou senha invalido(s)"
      end
    end  
  
    def destroy       
      session[:admin_id] = nil   
      p session[:admin_id]  
    end 
  end
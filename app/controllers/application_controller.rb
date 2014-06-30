class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show
    @user = User.find_by_id(params['id'])
    end
  
  def new
    
  end
  
  def create
    u = User.new
    u.name = params['name']
    u.email = params['email']
    u.save
    
    redirect_to "/main/#{ u.id }"
  end
  
  def edit
    @user = User.find_by_id(params['id'])
  end
  
  def update
    u = User.find_by_id(params['id'])
    u.name = params['name']
    u.email = params['email']
    u.save
    
    redirect_to "/main/#{ u.id }"
  end
end

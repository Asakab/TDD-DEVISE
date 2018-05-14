class ClubsController < ApplicationController
  def home2
  end

  def index
  	@users = User.all 
  end

  
def new
    @user = User.new
end


end

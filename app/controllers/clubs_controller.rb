class ClubsController < ApplicationController
  def home2
  end

  def index
  	@users = User.all 
  end

end

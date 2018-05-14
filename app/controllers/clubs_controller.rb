class ClubsController < ApplicationController
  def home2
  end

  def index
  	@users = User.all 
  end

  
def new
    @user = User.new
end

def show 
	@user = User.new(name: params['name'], surname: params['surname'], email: params['email'])
  	@user.save
  	

end

end
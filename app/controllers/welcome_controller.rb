class WelcomeController < ApplicationController
  def index
  	
  	@groups = Group.search(params[:search]).recent

  end
end

class WelcomeController < ApplicationController
  def index  	
  	@groups = Group.all.limit(5).recent
  end
end

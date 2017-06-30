class GroupsController < ApplicationController
	
	before_action :authenticate_user! , only: [:edit, :update, :new, :destroy]

	def index
    if params[:search]
      @groups = Group.search(params[:search]).recent.paginate(:page => params[:page], :per_page => 5)
    else 
    	@groups = Group.all.recent.paginate(:page => params[:page], :per_page => 5)
    end
	end

	def new
		@group = Group.new
	end	
	def create
   		@group = Group.new(group_params)
   		if @group.save
   			redirect_to groups_path
   		else
      		render :new
      	end
 	end
 	def show
 		@group = Group.find(params[:id])
 		@posts = @group.posts.recent.paginate(:page => params[:page], :per_page => 10)
 	end
 	def edit
 		@group = Group.find(params[:id])
 	end
 	def update
    	@group = Group.find(params[:id])

    	@group.update(group_params)

    	redirect_to groups_path
  	end
  	def destroy
    	@group = Group.find(params[:id])
    	@group.destroy

    	redirect_to groups_path
	end

 	private

 	def group_params
   		params.require(:group).permit(:title, :description, :image)
 	end
end

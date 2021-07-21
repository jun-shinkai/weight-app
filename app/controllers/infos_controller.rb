class InfosController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :redirect_user, only: [:edit, :update]
  def index
    if user_signed_in?
       @infos = current_user.infos
    else
      @infos = Info.all
    end
  end

  def new
    @info = Info.new
  end

  def create
    @info = Info.new(info_params)
    
    unless @info.save
      redirect_to root_url
    end
  end
 
  def edit
    @info = Info.find(params[:id])
  end

  def update
    @info = Info.find(params[:id])

    unless @info.update!(info_params)
      redirect_to edit_path
    end
end

  private
  def info_params
  params.require(:info).permit(:weight,:height,:bmi,:ave_wei).merge(user_id: current_user.id)
  end

  def redirect_user
    @info = Info.find(params[:id])
      if current_user != @info.user
      redirect_to root_path
      end  
  end
end

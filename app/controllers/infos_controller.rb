class InfosController < ApplicationController
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
    @info.save
  end
 

  private
  def info_params
  params.require(:info).permit(:weight,:height,:bmi,:ave_wei).merge(user_id: current_user.id)
  end
end

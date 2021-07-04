class InfosController < ApplicationController
  def index
    @infos = Info.all
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
  params.require(:info).permit(:weight,:height).merge(user_id: current_user.id)
  end

  # def info_information
  #   info_params.merge(@info.set_extra_information,user_id: current_user.id)
  # end
end

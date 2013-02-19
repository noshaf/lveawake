class RagersController < ApplicationController
  def new
    @rager = Rager.new
  end

  def create
    @rager = Rager.new(params[:rager])
    if @rager.save
      LveAwake.welcome_email(@rager).deliver
      redirect_to rager_path(@rager), :alert => "Thanks for signing up!"
    else
      redirect_to new_rager_path, :alert => "Invalid email"
    end
  end

  def index
    @rager = Rager.new
  end

  def show
  end
end

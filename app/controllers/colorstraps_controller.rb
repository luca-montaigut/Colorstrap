class ColorstrapsController < ApplicationController
  def index

  end
  
  def show
    @color = Colorstrap.find(params[:id])
  end

  def create
    @color = Colorstrap.create(primary: params[:primary], secondary: params[:secondary], success: params[:success], info: params[:info], warning: params[:warning], danger: params[:danger])
    redirect_to @color
  end

  def update
    
  end
end

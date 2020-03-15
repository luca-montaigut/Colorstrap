class ColorstrapsController < ApplicationController
  def index

  end
  
  def show
    @color = Colorstrap.find(params[:id])
    respond_to do |format|
      format.html { }
      format.css { }
    end
  end

  def create
    @color = Colorstrap.create(
      primary: params[:primary], 
      secondary: params[:secondary], 
      success: params[:success], 
      info: params[:info], 
      warning: params[:warning], 
      danger: params[:danger],
      background: params[:background],
      text_light: params[:text_light],
      text_dark: params[:text_dark],
      light: params[:light],
      dark: params[:dark],
      link_hover: params[:link_hover],
      form_background: params[:form_background],
      inner_background: params[:inner_background]
    )
    redirect_to @color
  end

  def update
    
  end
end

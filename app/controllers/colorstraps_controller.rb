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
    @color = Colorstrap.create(colorstrap_params)
    redirect_to @color
  end

  def update
    
  end

  private

  def colorstrap_params
    params.permit(:primary, :secondary, :success, :info, :warning, :danger, :background, :text_light, :text_dark, :light, :dark, :link_hover, :form_background, :inner_background)
  end
end

class ImagesController < ApplicationController
  def index
      @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      flash[:success] = "image analysed!"
      render 'show'
    else
      render 'new'
    end
  end

  def show
  end

  private

    def image_params
      params.require(:image).permit(:image, :title)
    end

end

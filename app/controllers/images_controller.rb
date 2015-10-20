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
      redirect_to image_path @image
    else
      render 'new'
    end
  end

  def show
    @image = Image.find(params[:id])
    file_url = Rails.root.to_s + "/public/" + @image.image.remote_url
    @exif = EXIFR::JPEG::new(file_url)
    query = dps_to_dd(@exif.gps_latitude || 0, @exif.gps_latitude_ref|| 0, @exif.gps_longitude|| 0, @exif.gps_longitude_ref|| 0)
    @address = Geocoder.search(query).first
  end

  private

    def image_params
      params.require(:image).permit(:image, :title)
    end

  def dps_to_dd(latitude,ref_latitude,longitude, ref_longitude)
    if ref_longitude.eql?"W"
      longitude[0]=-longitude[0]
      longitude[1]=-longitude[1]
      longitude[2]=-longitude[2]
    end
    if ref_longitude.eql?"S"
      latitude[0]=-latitude[0]
      latitude[1]=-latitude[1]
      latitude[2]=-latitude[2]
    end
    dd1 = (latitude[0] + latitude[1]/60 + latitude[2]/3600).to_f
    dd2 = (longitude[0] + longitude[1]/60 + longitude[2]/3600).to_f
    return [dd1, dd2]
  end

end

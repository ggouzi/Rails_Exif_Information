class StaticPagesController < ApplicationController
	helper_method :dps_to_dd
  def home
		
  end

  def dps_to_dd(latitude,ref_latitude,longitude, ref_longitude)
  	
      longitude = longitude.map{ |long| -long }  if ref_longitude.eql?"W"
      latitude = latitude.map{ |lat| -lat }  if ref_longitude.eql?"S"
      
      dd1 = (latitude[0] + latitude[1]/60 + latitude[2]/3600).to_f
      dd2 = (longitude[0] + longitude[1]/60 + longitude[2]/3600).to_f
  end

  def help
  end

  def about
  end

  def contact
  end
end

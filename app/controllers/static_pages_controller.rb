class StaticPagesController < ApplicationController
	helper_method :dps_to_dd
  def home
		
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
	end

  def help
  end

  def about
  end

  def contact
  end
end

# Rails_Exif_Information

TODO : Reset database on each pull. Some datas are stored on the database and can't be reloaded because pathname of the pictures are different on each computer.
	bundle exec rake db:reset

This application allow you to extract exif informations from your local pictures such as : Date, Model, GPS Location (and find address), technical informations (focal length, exposure time, ISO spped rating)...

Tested on Firefox
exifr and geocoder gems will be downloaded if not already installed. May need to change ruby version (Gemfile:2)

    cd /tmp
    git clone https://github.com/ggouzi/Rails_Exif_Information.git
    cd Rails_Exif_Information
    bundle install --without production
    bundle exec rake db:migrate
    bundle exec rake db:test:prepare
    bundle exec rspec spec/

# Credits
This simple application is based on the sample [Ruby on Rails Tutorial: sample application](https://github.com/railstutorial/sample_app_rails_4) edited by [Michael Hartl](http://michaelhartl.com/)

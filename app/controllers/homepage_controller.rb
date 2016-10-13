class HomepageController < ApplicationController
  def index
    petfinder = Petfinder::Client.new('9f7e499c0441264a4cfea0242c9b005d', '44c67bd61a8f799abc055c9f367397f6')
    shelter = petfinder.shelter('FL697')
    url = HTTParty.get("http://api.petfinder.com/my.method?key=d6af2d543aed1b6d27ab54b3d4b76815=5a3619c14d603b86b4b16e4da363407e")

    http://api.petfinder.com/auth.getToken?key=9f7e499c0441264a4cfea0242c9b005d&sig=a1e5de97c9636f487f803537baabf857
  end
end

# API Key
# 9f7e499c0441264a4cfea0242c9b005d
# API Secret
# 44c67bd61a8f799abc055c9f367397f6

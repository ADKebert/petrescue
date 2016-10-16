class HomepageController < ApplicationController
  def index
    petfinder = Petfinder::Client.new('9f7e499c0441264a4cfea0242c9b005d', '44c67bd61a8f799abc055c9f367397f6')
    shelter = petfinder.shelter('FL697')
    pets = petfinder.shelter_pets('FL697')
    # It's working, you just need to get the stuff out of the pet object for it to render anything.
    # The method's I've found for a pet on the github are: :id, :name, :animal, :mix, :age, :shelter_id, :shelter_pet_id, :sex, :size, :description, :last_update, :status
    first_large_photo_per_pet = pets.map { |pet| pet.photos.first.large }
    render json: first_large_photo_per_pet
  end
end

# API Key
# 9f7e499c0441264a4cfea0242c9b005d
# API Secret
# 44c67bd61a8f799abc055c9f367397f6

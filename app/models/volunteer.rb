class Volunteer < ApplicationRecord
  enum activity: [:walking, :feeding, :bathing, :fostering]
end
